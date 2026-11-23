#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  int pid, priority, res;
  if(argc < 3){
    printf(2, "Uso: nice <pid> <prioridad>\n");
    exit();
  }
  pid = atoi(argv[1]);
  priority = atoi(argv[2]);
  res = chpr(pid, priority);
  if(res < 0){
    printf(2, "Error: PID inexistente o prioridad fuera de rango (0-20)\n");
  } else {
    printf(1, "Exito: prioridad del PID %d actualizada a %d\n", pid, priority);
  }
  exit();
}
