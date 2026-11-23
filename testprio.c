#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  int n = 3;
  if(argc > 1)
    n = atoi(argv[1]);

  int k, pid;
  volatile double x = 0, z;

  printf(1, "Iniciando prueba con %d procesos...\n", n);

  for(k = 0; k < n; k++){
    pid = fork();
    if(pid < 0){
      printf(1, "Error al crear proceso hijo\n");
    } else if(pid == 0){
      int prio = 18 - (k * 6);
      if(prio < 1) prio = 1;
      chpr(getpid(), prio);
      printf(1, "Hijo %d (PID %d) iniciado con prioridad %d\n", k + 1, getpid(), prio);

      for(z = 0; z < 4000000.0; z += 0.05)
        x = x + 3.14 * 89.64;

      printf(1, ">>> Hijo %d (PID %d, prioridad %d) TERMINO\n", k + 1, getpid(), prio);
      exit();
    }
  }

  for(k = 0; k < n; k++){
    wait();
  }
  printf(1, "Prueba finalizada.\n");
  exit();
}
