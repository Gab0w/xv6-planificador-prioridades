
_testprio:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 1c             	sub    $0x1c,%esp
  13:	8b 41 04             	mov    0x4(%ecx),%eax
  int n = 3;
  if(argc > 1)
  16:	83 39 01             	cmpl   $0x1,(%ecx)
  19:	0f 8f 95 00 00 00    	jg     b4 <main+0xb4>
    n = atoi(argv[1]);

  int k, pid;
  volatile double x = 0, z;

  printf(1, "Iniciando prueba con %d procesos...\n", n);
  1f:	51                   	push   %ecx
  volatile double x = 0, z;
  20:	d9 ee                	fldz
  int n = 3;
  22:	be 03 00 00 00       	mov    $0x3,%esi
  printf(1, "Iniciando prueba con %d procesos...\n", n);
  27:	6a 03                	push   $0x3
  29:	68 08 09 00 00       	push   $0x908
  2e:	6a 01                	push   $0x1
  volatile double x = 0, z;
  30:	dd 5d d8             	fstpl  -0x28(%ebp)
  printf(1, "Iniciando prueba con %d procesos...\n", n);
  33:	e8 68 05 00 00       	call   5a0 <printf>
  38:	83 c4 10             	add    $0x10,%esp

  for(k = 0; k < n; k++){
  3b:	31 db                	xor    %ebx,%ebx
  3d:	eb 0e                	jmp    4d <main+0x4d>
  3f:	90                   	nop
    pid = fork();
    if(pid < 0){
      printf(1, "Error al crear proceso hijo\n");
    } else if(pid == 0){
  40:	0f 84 9d 00 00 00    	je     e3 <main+0xe3>
  for(k = 0; k < n; k++){
  46:	83 c3 01             	add    $0x1,%ebx
  49:	39 de                	cmp    %ebx,%esi
  4b:	74 22                	je     6f <main+0x6f>
    pid = fork();
  4d:	e8 b9 03 00 00       	call   40b <fork>
    if(pid < 0){
  52:	85 c0                	test   %eax,%eax
  54:	79 ea                	jns    40 <main+0x40>
      printf(1, "Error al crear proceso hijo\n");
  56:	83 ec 08             	sub    $0x8,%esp
  for(k = 0; k < n; k++){
  59:	83 c3 01             	add    $0x1,%ebx
      printf(1, "Error al crear proceso hijo\n");
  5c:	68 88 09 00 00       	push   $0x988
  61:	6a 01                	push   $0x1
  63:	e8 38 05 00 00       	call   5a0 <printf>
  68:	83 c4 10             	add    $0x10,%esp
  for(k = 0; k < n; k++){
  6b:	39 de                	cmp    %ebx,%esi
  6d:	75 de                	jne    4d <main+0x4d>
      printf(1, ">>> Hijo %d (PID %d, prioridad %d) TERMINO\n", k + 1, getpid(), prio);
      exit();
    }
  }

  for(k = 0; k < n; k++){
  6f:	31 f6                	xor    %esi,%esi
  71:	f6 c3 01             	test   $0x1,%bl
  74:	74 1a                	je     90 <main+0x90>
    wait();
  76:	e8 a0 03 00 00       	call   41b <wait>
  for(k = 0; k < n; k++){
  7b:	be 01 00 00 00       	mov    $0x1,%esi
  80:	83 fb 01             	cmp    $0x1,%ebx
  83:	74 1c                	je     a1 <main+0xa1>
  85:	8d 76 00             	lea    0x0(%esi),%esi
  88:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  8f:	00 
    wait();
  90:	e8 86 03 00 00       	call   41b <wait>
  for(k = 0; k < n; k++){
  95:	83 c6 02             	add    $0x2,%esi
    wait();
  98:	e8 7e 03 00 00       	call   41b <wait>
  for(k = 0; k < n; k++){
  9d:	39 f3                	cmp    %esi,%ebx
  9f:	75 ef                	jne    90 <main+0x90>
  }
  printf(1, "Prueba finalizada.\n");
  a1:	50                   	push   %eax
  a2:	50                   	push   %eax
  a3:	68 a5 09 00 00       	push   $0x9a5
  a8:	6a 01                	push   $0x1
  aa:	e8 f1 04 00 00       	call   5a0 <printf>
  exit();
  af:	e8 5f 03 00 00       	call   413 <exit>
    n = atoi(argv[1]);
  b4:	83 ec 0c             	sub    $0xc,%esp
  b7:	ff 70 04             	push   0x4(%eax)
  ba:	e8 d1 02 00 00       	call   390 <atoi>
  printf(1, "Iniciando prueba con %d procesos...\n", n);
  bf:	83 c4 0c             	add    $0xc,%esp
  c2:	50                   	push   %eax
  volatile double x = 0, z;
  c3:	d9 ee                	fldz
    n = atoi(argv[1]);
  c5:	89 c6                	mov    %eax,%esi
  printf(1, "Iniciando prueba con %d procesos...\n", n);
  c7:	68 08 09 00 00       	push   $0x908
  cc:	6a 01                	push   $0x1
  volatile double x = 0, z;
  ce:	dd 5d d8             	fstpl  -0x28(%ebp)
  printf(1, "Iniciando prueba con %d procesos...\n", n);
  d1:	e8 ca 04 00 00       	call   5a0 <printf>
  for(k = 0; k < n; k++){
  d6:	83 c4 10             	add    $0x10,%esp
  d9:	85 f6                	test   %esi,%esi
  db:	0f 8f 5a ff ff ff    	jg     3b <main+0x3b>
  e1:	eb be                	jmp    a1 <main+0xa1>
      int prio = 18 - (k * 6);
  e3:	6b f3 fa             	imul   $0xfffffffa,%ebx,%esi
      if(prio < 1) prio = 1;
  e6:	b8 01 00 00 00       	mov    $0x1,%eax
      int prio = 18 - (k * 6);
  eb:	83 c6 12             	add    $0x12,%esi
      if(prio < 1) prio = 1;
  ee:	85 f6                	test   %esi,%esi
  f0:	0f 4e f0             	cmovle %eax,%esi
      printf(1, "Hijo %d (PID %d) iniciado con prioridad %d\n", k + 1, getpid(), prio);
  f3:	83 c3 01             	add    $0x1,%ebx
      chpr(getpid(), prio);
  f6:	e8 98 03 00 00       	call   493 <getpid>
  fb:	52                   	push   %edx
  fc:	52                   	push   %edx
  fd:	56                   	push   %esi
  fe:	50                   	push   %eax
  ff:	e8 b7 03 00 00       	call   4bb <chpr>
      printf(1, "Hijo %d (PID %d) iniciado con prioridad %d\n", k + 1, getpid(), prio);
 104:	e8 8a 03 00 00       	call   493 <getpid>
 109:	89 34 24             	mov    %esi,(%esp)
 10c:	50                   	push   %eax
 10d:	53                   	push   %ebx
 10e:	68 30 09 00 00       	push   $0x930
 113:	6a 01                	push   $0x1
 115:	e8 86 04 00 00       	call   5a0 <printf>
      for(z = 0; z < 4000000.0; z += 0.05)
 11a:	83 c4 20             	add    $0x20,%esp
 11d:	d9 ee                	fldz
 11f:	dd 5d e0             	fstpl  -0x20(%ebp)
 122:	dd 45 e0             	fldl   -0x20(%ebp)
        x = x + 3.14 * 89.64;
 125:	dd 05 c8 09 00 00    	fldl   0x9c8
      for(z = 0; z < 4000000.0; z += 0.05)
 12b:	d9 05 c0 09 00 00    	flds   0x9c0
 131:	df f2                	fcomip %st(2),%st
 133:	dd d9                	fstp   %st(1)
 135:	76 30                	jbe    167 <main+0x167>
 137:	90                   	nop
 138:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 13f:	00 
        x = x + 3.14 * 89.64;
 140:	dd 45 d8             	fldl   -0x28(%ebp)
 143:	d8 c1                	fadd   %st(1),%st
 145:	dd 5d d8             	fstpl  -0x28(%ebp)
      for(z = 0; z < 4000000.0; z += 0.05)
 148:	dd 45 e0             	fldl   -0x20(%ebp)
 14b:	dc 05 d0 09 00 00    	faddl  0x9d0
 151:	dd 5d e0             	fstpl  -0x20(%ebp)
 154:	dd 45 e0             	fldl   -0x20(%ebp)
 157:	d9 05 c0 09 00 00    	flds   0x9c0
 15d:	df f1                	fcomip %st(1),%st
 15f:	dd d8                	fstp   %st(0)
 161:	77 dd                	ja     140 <main+0x140>
 163:	dd d8                	fstp   %st(0)
 165:	eb 02                	jmp    169 <main+0x169>
 167:	dd d8                	fstp   %st(0)
      printf(1, ">>> Hijo %d (PID %d, prioridad %d) TERMINO\n", k + 1, getpid(), prio);
 169:	e8 25 03 00 00       	call   493 <getpid>
 16e:	83 ec 0c             	sub    $0xc,%esp
 171:	56                   	push   %esi
 172:	50                   	push   %eax
 173:	53                   	push   %ebx
 174:	68 5c 09 00 00       	push   $0x95c
 179:	6a 01                	push   $0x1
 17b:	e8 20 04 00 00       	call   5a0 <printf>
      exit();
 180:	83 c4 20             	add    $0x20,%esp
 183:	e8 8b 02 00 00       	call   413 <exit>
 188:	66 90                	xchg   %ax,%ax
 18a:	66 90                	xchg   %ax,%ax
 18c:	66 90                	xchg   %ax,%ax
 18e:	66 90                	xchg   %ax,%ax
 190:	66 90                	xchg   %ax,%ax
 192:	66 90                	xchg   %ax,%ax
 194:	66 90                	xchg   %ax,%ax
 196:	66 90                	xchg   %ax,%ax
 198:	66 90                	xchg   %ax,%ax
 19a:	66 90                	xchg   %ax,%ax
 19c:	66 90                	xchg   %ax,%ax
 19e:	66 90                	xchg   %ax,%ax

000001a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 1a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1a1:	31 c0                	xor    %eax,%eax
{
 1a3:	89 e5                	mov    %esp,%ebp
 1a5:	53                   	push   %ebx
 1a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1b7:	83 c0 01             	add    $0x1,%eax
 1ba:	84 d2                	test   %dl,%dl
 1bc:	75 f2                	jne    1b0 <strcpy+0x10>
    ;
  return os;
}
 1be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1c1:	89 c8                	mov    %ecx,%eax
 1c3:	c9                   	leave
 1c4:	c3                   	ret
 1c5:	8d 76 00             	lea    0x0(%esi),%esi
 1c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1cf:	00 

000001d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	53                   	push   %ebx
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
 1d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1da:	0f b6 02             	movzbl (%edx),%eax
 1dd:	84 c0                	test   %al,%al
 1df:	75 2d                	jne    20e <strcmp+0x3e>
 1e1:	eb 4a                	jmp    22d <strcmp+0x5d>
 1e3:	eb 1b                	jmp    200 <strcmp+0x30>
 1e5:	8d 76 00             	lea    0x0(%esi),%esi
 1e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ef:	00 
 1f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1f7:	00 
 1f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ff:	00 
 200:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 204:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 207:	84 c0                	test   %al,%al
 209:	74 15                	je     220 <strcmp+0x50>
 20b:	83 c1 01             	add    $0x1,%ecx
 20e:	0f b6 19             	movzbl (%ecx),%ebx
 211:	38 c3                	cmp    %al,%bl
 213:	74 eb                	je     200 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 215:	29 d8                	sub    %ebx,%eax
}
 217:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 21a:	c9                   	leave
 21b:	c3                   	ret
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
 220:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 224:	31 c0                	xor    %eax,%eax
 226:	29 d8                	sub    %ebx,%eax
}
 228:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 22b:	c9                   	leave
 22c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 22d:	0f b6 19             	movzbl (%ecx),%ebx
 230:	31 c0                	xor    %eax,%eax
 232:	eb e1                	jmp    215 <strcmp+0x45>
 234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 238:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 23f:	00 

00000240 <strlen>:

uint
strlen(const char *s)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 246:	80 3a 00             	cmpb   $0x0,(%edx)
 249:	74 15                	je     260 <strlen+0x20>
 24b:	31 c0                	xor    %eax,%eax
 24d:	8d 76 00             	lea    0x0(%esi),%esi
 250:	83 c0 01             	add    $0x1,%eax
 253:	89 c1                	mov    %eax,%ecx
 255:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 259:	75 f5                	jne    250 <strlen+0x10>
    ;
  return n;
}
 25b:	89 c8                	mov    %ecx,%eax
 25d:	5d                   	pop    %ebp
 25e:	c3                   	ret
 25f:	90                   	nop
  for(n = 0; s[n]; n++)
 260:	31 c9                	xor    %ecx,%ecx
}
 262:	5d                   	pop    %ebp
 263:	89 c8                	mov    %ecx,%eax
 265:	c3                   	ret
 266:	66 90                	xchg   %ax,%ax
 268:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 26f:	00 

00000270 <memset>:

void*
memset(void *dst, int c, uint n)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 274:	8b 4d 10             	mov    0x10(%ebp),%ecx
 277:	8b 45 0c             	mov    0xc(%ebp),%eax
 27a:	8b 7d 08             	mov    0x8(%ebp),%edi
 27d:	fc                   	cld
 27e:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 280:	8b 45 08             	mov    0x8(%ebp),%eax
 283:	8b 7d fc             	mov    -0x4(%ebp),%edi
 286:	c9                   	leave
 287:	c3                   	ret
 288:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28f:	00 

00000290 <strchr>:

char*
strchr(const char *s, char c)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	8b 45 08             	mov    0x8(%ebp),%eax
 296:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 29a:	0f b6 10             	movzbl (%eax),%edx
 29d:	84 d2                	test   %dl,%dl
 29f:	75 1a                	jne    2bb <strchr+0x2b>
 2a1:	eb 25                	jmp    2c8 <strchr+0x38>
 2a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 2a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2af:	00 
 2b0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2b4:	83 c0 01             	add    $0x1,%eax
 2b7:	84 d2                	test   %dl,%dl
 2b9:	74 0d                	je     2c8 <strchr+0x38>
    if(*s == c)
 2bb:	38 d1                	cmp    %dl,%cl
 2bd:	75 f1                	jne    2b0 <strchr+0x20>
      return (char*)s;
  return 0;
}
 2bf:	5d                   	pop    %ebp
 2c0:	c3                   	ret
 2c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2c8:	31 c0                	xor    %eax,%eax
}
 2ca:	5d                   	pop    %ebp
 2cb:	c3                   	ret
 2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002d0 <gets>:

char*
gets(char *buf, int max)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2d5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2d9:	31 db                	xor    %ebx,%ebx
{
 2db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2de:	eb 27                	jmp    307 <gets+0x37>
    cc = read(0, &c, 1);
 2e0:	83 ec 04             	sub    $0x4,%esp
 2e3:	6a 01                	push   $0x1
 2e5:	57                   	push   %edi
 2e6:	6a 00                	push   $0x0
 2e8:	e8 3e 01 00 00       	call   42b <read>
    if(cc < 1)
 2ed:	83 c4 10             	add    $0x10,%esp
 2f0:	85 c0                	test   %eax,%eax
 2f2:	7e 1d                	jle    311 <gets+0x41>
      break;
    buf[i++] = c;
 2f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2f8:	8b 55 08             	mov    0x8(%ebp),%edx
 2fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2ff:	3c 0a                	cmp    $0xa,%al
 301:	74 1d                	je     320 <gets+0x50>
 303:	3c 0d                	cmp    $0xd,%al
 305:	74 19                	je     320 <gets+0x50>
  for(i=0; i+1 < max; ){
 307:	89 de                	mov    %ebx,%esi
 309:	83 c3 01             	add    $0x1,%ebx
 30c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 30f:	7c cf                	jl     2e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 311:	8b 45 08             	mov    0x8(%ebp),%eax
 314:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 318:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31b:	5b                   	pop    %ebx
 31c:	5e                   	pop    %esi
 31d:	5f                   	pop    %edi
 31e:	5d                   	pop    %ebp
 31f:	c3                   	ret
  buf[i] = '\0';
 320:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
 323:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 325:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 329:	8d 65 f4             	lea    -0xc(%ebp),%esp
 32c:	5b                   	pop    %ebx
 32d:	5e                   	pop    %esi
 32e:	5f                   	pop    %edi
 32f:	5d                   	pop    %ebp
 330:	c3                   	ret
 331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 338:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 33f:	00 

00000340 <stat>:

int
stat(const char *n, struct stat *st)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 345:	83 ec 08             	sub    $0x8,%esp
 348:	6a 00                	push   $0x0
 34a:	ff 75 08             	push   0x8(%ebp)
 34d:	e8 01 01 00 00       	call   453 <open>
  if(fd < 0)
 352:	83 c4 10             	add    $0x10,%esp
 355:	85 c0                	test   %eax,%eax
 357:	78 27                	js     380 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 359:	83 ec 08             	sub    $0x8,%esp
 35c:	ff 75 0c             	push   0xc(%ebp)
 35f:	89 c3                	mov    %eax,%ebx
 361:	50                   	push   %eax
 362:	e8 04 01 00 00       	call   46b <fstat>
  close(fd);
 367:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 36a:	89 c6                	mov    %eax,%esi
  close(fd);
 36c:	e8 ca 00 00 00       	call   43b <close>
  return r;
 371:	83 c4 10             	add    $0x10,%esp
}
 374:	8d 65 f8             	lea    -0x8(%ebp),%esp
 377:	89 f0                	mov    %esi,%eax
 379:	5b                   	pop    %ebx
 37a:	5e                   	pop    %esi
 37b:	5d                   	pop    %ebp
 37c:	c3                   	ret
 37d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 380:	be ff ff ff ff       	mov    $0xffffffff,%esi
 385:	eb ed                	jmp    374 <stat+0x34>
 387:	90                   	nop
 388:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 38f:	00 

00000390 <atoi>:

int
atoi(const char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 397:	0f be 02             	movsbl (%edx),%eax
 39a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 39d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3a5:	77 2e                	ja     3d5 <atoi+0x45>
 3a7:	eb 17                	jmp    3c0 <atoi+0x30>
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3b0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3b7:	00 
 3b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3bf:	00 
    n = n*10 + *s++ - '0';
 3c0:	83 c2 01             	add    $0x1,%edx
 3c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3ca:	0f be 02             	movsbl (%edx),%eax
 3cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3d0:	80 fb 09             	cmp    $0x9,%bl
 3d3:	76 eb                	jbe    3c0 <atoi+0x30>
  return n;
}
 3d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3d8:	89 c8                	mov    %ecx,%eax
 3da:	c9                   	leave
 3db:	c3                   	ret
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	8b 45 10             	mov    0x10(%ebp),%eax
 3e7:	8b 55 08             	mov    0x8(%ebp),%edx
 3ea:	56                   	push   %esi
 3eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ee:	85 c0                	test   %eax,%eax
 3f0:	7e 13                	jle    405 <memmove+0x25>
 3f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3f4:	89 d7                	mov    %edx,%edi
 3f6:	66 90                	xchg   %ax,%ax
 3f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ff:	00 
    *dst++ = *src++;
 400:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 401:	39 f8                	cmp    %edi,%eax
 403:	75 fb                	jne    400 <memmove+0x20>
  return vdst;
}
 405:	5e                   	pop    %esi
 406:	89 d0                	mov    %edx,%eax
 408:	5f                   	pop    %edi
 409:	5d                   	pop    %ebp
 40a:	c3                   	ret

0000040b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 40b:	b8 01 00 00 00       	mov    $0x1,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret

00000413 <exit>:
SYSCALL(exit)
 413:	b8 02 00 00 00       	mov    $0x2,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret

0000041b <wait>:
SYSCALL(wait)
 41b:	b8 03 00 00 00       	mov    $0x3,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret

00000423 <pipe>:
SYSCALL(pipe)
 423:	b8 04 00 00 00       	mov    $0x4,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret

0000042b <read>:
SYSCALL(read)
 42b:	b8 05 00 00 00       	mov    $0x5,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret

00000433 <write>:
SYSCALL(write)
 433:	b8 10 00 00 00       	mov    $0x10,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret

0000043b <close>:
SYSCALL(close)
 43b:	b8 15 00 00 00       	mov    $0x15,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret

00000443 <kill>:
SYSCALL(kill)
 443:	b8 06 00 00 00       	mov    $0x6,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret

0000044b <exec>:
SYSCALL(exec)
 44b:	b8 07 00 00 00       	mov    $0x7,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret

00000453 <open>:
SYSCALL(open)
 453:	b8 0f 00 00 00       	mov    $0xf,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret

0000045b <mknod>:
SYSCALL(mknod)
 45b:	b8 11 00 00 00       	mov    $0x11,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret

00000463 <unlink>:
SYSCALL(unlink)
 463:	b8 12 00 00 00       	mov    $0x12,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret

0000046b <fstat>:
SYSCALL(fstat)
 46b:	b8 08 00 00 00       	mov    $0x8,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret

00000473 <link>:
SYSCALL(link)
 473:	b8 13 00 00 00       	mov    $0x13,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret

0000047b <mkdir>:
SYSCALL(mkdir)
 47b:	b8 14 00 00 00       	mov    $0x14,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret

00000483 <chdir>:
SYSCALL(chdir)
 483:	b8 09 00 00 00       	mov    $0x9,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret

0000048b <dup>:
SYSCALL(dup)
 48b:	b8 0a 00 00 00       	mov    $0xa,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret

00000493 <getpid>:
SYSCALL(getpid)
 493:	b8 0b 00 00 00       	mov    $0xb,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret

0000049b <sbrk>:
SYSCALL(sbrk)
 49b:	b8 0c 00 00 00       	mov    $0xc,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret

000004a3 <sleep>:
SYSCALL(sleep)
 4a3:	b8 0d 00 00 00       	mov    $0xd,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret

000004ab <uptime>:
SYSCALL(uptime)
 4ab:	b8 0e 00 00 00       	mov    $0xe,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret

000004b3 <cps>:
SYSCALL(cps)
 4b3:	b8 16 00 00 00       	mov    $0x16,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret

000004bb <chpr>:
SYSCALL(chpr)
 4bb:	b8 17 00 00 00       	mov    $0x17,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret
 4c3:	66 90                	xchg   %ax,%ax
 4c5:	66 90                	xchg   %ax,%ax
 4c7:	66 90                	xchg   %ax,%ax
 4c9:	66 90                	xchg   %ax,%ax
 4cb:	66 90                	xchg   %ax,%ax
 4cd:	66 90                	xchg   %ax,%ax
 4cf:	66 90                	xchg   %ax,%ax
 4d1:	66 90                	xchg   %ax,%ax
 4d3:	66 90                	xchg   %ax,%ax
 4d5:	66 90                	xchg   %ax,%ax
 4d7:	66 90                	xchg   %ax,%ax
 4d9:	66 90                	xchg   %ax,%ax
 4db:	66 90                	xchg   %ax,%ax
 4dd:	66 90                	xchg   %ax,%ax
 4df:	90                   	nop

000004e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	56                   	push   %esi
 4e5:	53                   	push   %ebx
 4e6:	89 cb                	mov    %ecx,%ebx
 4e8:	83 ec 3c             	sub    $0x3c,%esp
 4eb:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 4ee:	85 d2                	test   %edx,%edx
 4f0:	0f 89 9a 00 00 00    	jns    590 <printint+0xb0>
 4f6:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4fa:	0f 84 90 00 00 00    	je     590 <printint+0xb0>
    neg = 1;
    x = -xx;
 500:	f7 da                	neg    %edx
    neg = 1;
 502:	b8 01 00 00 00       	mov    $0x1,%eax
 507:	89 45 c0             	mov    %eax,-0x40(%ebp)
 50a:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
 50c:	31 f6                	xor    %esi,%esi
 50e:	66 90                	xchg   %ax,%ax
 510:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 517:	00 
 518:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 51f:	00 
  do{
    buf[i++] = digits[x % base];
 520:	89 c8                	mov    %ecx,%eax
 522:	31 d2                	xor    %edx,%edx
 524:	89 f7                	mov    %esi,%edi
 526:	f7 f3                	div    %ebx
 528:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
 52b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
 52d:	0f b6 92 30 0a 00 00 	movzbl 0xa30(%edx),%edx
  }while((x /= base) != 0);
 534:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
 536:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 53a:	73 e4                	jae    520 <printint+0x40>
  if(neg)
 53c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 53f:	85 c0                	test   %eax,%eax
 541:	74 07                	je     54a <printint+0x6a>
    buf[i++] = '-';
 543:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 548:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 54a:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
 54e:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 551:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 558:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 55f:	00 
    putc(fd, buf[i]);
 560:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 563:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 566:	83 ee 01             	sub    $0x1,%esi
 569:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
 56c:	8d 45 d7             	lea    -0x29(%ebp),%eax
 56f:	6a 01                	push   $0x1
 571:	50                   	push   %eax
 572:	57                   	push   %edi
 573:	e8 bb fe ff ff       	call   433 <write>
  while(--i >= 0)
 578:	83 c4 10             	add    $0x10,%esp
 57b:	39 f3                	cmp    %esi,%ebx
 57d:	75 e1                	jne    560 <printint+0x80>
}
 57f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 582:	5b                   	pop    %ebx
 583:	5e                   	pop    %esi
 584:	5f                   	pop    %edi
 585:	5d                   	pop    %ebp
 586:	c3                   	ret
 587:	90                   	nop
 588:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 58f:	00 
  neg = 0;
 590:	31 c0                	xor    %eax,%eax
 592:	e9 70 ff ff ff       	jmp    507 <printint+0x27>
 597:	90                   	nop
 598:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 59f:	00 

000005a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	56                   	push   %esi
 5a5:	53                   	push   %ebx
 5a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5ac:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5af:	0f b6 13             	movzbl (%ebx),%edx
 5b2:	83 c3 01             	add    $0x1,%ebx
 5b5:	84 d2                	test   %dl,%dl
 5b7:	0f 84 a0 00 00 00    	je     65d <printf+0xbd>
 5bd:	8d 45 10             	lea    0x10(%ebp),%eax
 5c0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 5c3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 5c6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 5c9:	eb 28                	jmp    5f3 <printf+0x53>
 5cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 5d0:	83 ec 04             	sub    $0x4,%esp
 5d3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5d6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 5d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5dc:	6a 01                	push   $0x1
 5de:	50                   	push   %eax
 5df:	56                   	push   %esi
 5e0:	e8 4e fe ff ff       	call   433 <write>
  for(i = 0; fmt[i]; i++){
 5e5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5e9:	83 c4 10             	add    $0x10,%esp
 5ec:	84 d2                	test   %dl,%dl
 5ee:	74 6d                	je     65d <printf+0xbd>
    c = fmt[i] & 0xff;
 5f0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 5f3:	83 f8 25             	cmp    $0x25,%eax
 5f6:	75 d8                	jne    5d0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 5f8:	0f b6 13             	movzbl (%ebx),%edx
 5fb:	84 d2                	test   %dl,%dl
 5fd:	74 5e                	je     65d <printf+0xbd>
    c = fmt[i] & 0xff;
 5ff:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 602:	80 fa 25             	cmp    $0x25,%dl
 605:	0f 84 25 01 00 00    	je     730 <printf+0x190>
 60b:	83 e8 63             	sub    $0x63,%eax
 60e:	83 f8 15             	cmp    $0x15,%eax
 611:	77 0d                	ja     620 <printf+0x80>
 613:	ff 24 85 d8 09 00 00 	jmp    *0x9d8(,%eax,4)
 61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 620:	83 ec 04             	sub    $0x4,%esp
 623:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 626:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 629:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 62d:	6a 01                	push   $0x1
 62f:	51                   	push   %ecx
 630:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 633:	56                   	push   %esi
 634:	e8 fa fd ff ff       	call   433 <write>
        putc(fd, c);
 639:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 63d:	83 c4 0c             	add    $0xc,%esp
 640:	88 55 e7             	mov    %dl,-0x19(%ebp)
 643:	6a 01                	push   $0x1
 645:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 648:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
 649:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
 64c:	56                   	push   %esi
 64d:	e8 e1 fd ff ff       	call   433 <write>
  for(i = 0; fmt[i]; i++){
 652:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 656:	83 c4 10             	add    $0x10,%esp
 659:	84 d2                	test   %dl,%dl
 65b:	75 93                	jne    5f0 <printf+0x50>
      }
      state = 0;
    }
  }
}
 65d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 660:	5b                   	pop    %ebx
 661:	5e                   	pop    %esi
 662:	5f                   	pop    %edi
 663:	5d                   	pop    %ebp
 664:	c3                   	ret
 665:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 668:	83 ec 0c             	sub    $0xc,%esp
 66b:	8b 17                	mov    (%edi),%edx
 66d:	b9 10 00 00 00       	mov    $0x10,%ecx
 672:	89 f0                	mov    %esi,%eax
 674:	6a 00                	push   $0x0
 676:	e8 65 fe ff ff       	call   4e0 <printint>
  for(i = 0; fmt[i]; i++){
 67b:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 67f:	83 c3 02             	add    $0x2,%ebx
 682:	83 c4 10             	add    $0x10,%esp
 685:	84 d2                	test   %dl,%dl
 687:	74 d4                	je     65d <printf+0xbd>
        ap++;
 689:	83 c7 04             	add    $0x4,%edi
 68c:	e9 5f ff ff ff       	jmp    5f0 <printf+0x50>
 691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 698:	8b 07                	mov    (%edi),%eax
        ap++;
 69a:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 69d:	85 c0                	test   %eax,%eax
 69f:	0f 84 9b 00 00 00    	je     740 <printf+0x1a0>
        while(*s != 0){
 6a5:	0f b6 10             	movzbl (%eax),%edx
 6a8:	84 d2                	test   %dl,%dl
 6aa:	0f 84 a2 00 00 00    	je     752 <printf+0x1b2>
 6b0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 6b3:	89 c7                	mov    %eax,%edi
 6b5:	89 d0                	mov    %edx,%eax
 6b7:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 6ba:	89 fb                	mov    %edi,%ebx
 6bc:	8d 7d e7             	lea    -0x19(%ebp),%edi
 6bf:	90                   	nop
  write(fd, &c, 1);
 6c0:	83 ec 04             	sub    $0x4,%esp
 6c3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 6c6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6c9:	6a 01                	push   $0x1
 6cb:	57                   	push   %edi
 6cc:	56                   	push   %esi
 6cd:	e8 61 fd ff ff       	call   433 <write>
        while(*s != 0){
 6d2:	0f b6 03             	movzbl (%ebx),%eax
 6d5:	83 c4 10             	add    $0x10,%esp
 6d8:	84 c0                	test   %al,%al
 6da:	75 e4                	jne    6c0 <printf+0x120>
 6dc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 6df:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 6e3:	83 c3 02             	add    $0x2,%ebx
 6e6:	84 d2                	test   %dl,%dl
 6e8:	0f 85 d5 fe ff ff    	jne    5c3 <printf+0x23>
 6ee:	e9 6a ff ff ff       	jmp    65d <printf+0xbd>
 6f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 6f8:	83 ec 0c             	sub    $0xc,%esp
 6fb:	8b 17                	mov    (%edi),%edx
 6fd:	b9 0a 00 00 00       	mov    $0xa,%ecx
 702:	89 f0                	mov    %esi,%eax
 704:	6a 01                	push   $0x1
 706:	e8 d5 fd ff ff       	call   4e0 <printint>
  for(i = 0; fmt[i]; i++){
 70b:	e9 6b ff ff ff       	jmp    67b <printf+0xdb>
        putc(fd, *ap);
 710:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 712:	83 ec 04             	sub    $0x4,%esp
 715:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 718:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 71b:	6a 01                	push   $0x1
 71d:	51                   	push   %ecx
 71e:	56                   	push   %esi
 71f:	e8 0f fd ff ff       	call   433 <write>
 724:	e9 52 ff ff ff       	jmp    67b <printf+0xdb>
 729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 730:	83 ec 04             	sub    $0x4,%esp
 733:	88 55 e7             	mov    %dl,-0x19(%ebp)
 736:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 739:	6a 01                	push   $0x1
 73b:	e9 08 ff ff ff       	jmp    648 <printf+0xa8>
          s = "(null)";
 740:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 743:	b8 28 00 00 00       	mov    $0x28,%eax
 748:	bf b9 09 00 00       	mov    $0x9b9,%edi
 74d:	e9 65 ff ff ff       	jmp    6b7 <printf+0x117>
  for(i = 0; fmt[i]; i++){
 752:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 756:	83 c3 02             	add    $0x2,%ebx
 759:	84 d2                	test   %dl,%dl
 75b:	0f 85 8f fe ff ff    	jne    5f0 <printf+0x50>
 761:	e9 f7 fe ff ff       	jmp    65d <printf+0xbd>
 766:	66 90                	xchg   %ax,%ax
 768:	66 90                	xchg   %ax,%ax
 76a:	66 90                	xchg   %ax,%ax
 76c:	66 90                	xchg   %ax,%ax
 76e:	66 90                	xchg   %ax,%ax
 770:	66 90                	xchg   %ax,%ax
 772:	66 90                	xchg   %ax,%ax
 774:	66 90                	xchg   %ax,%ax
 776:	66 90                	xchg   %ax,%ax
 778:	66 90                	xchg   %ax,%ax
 77a:	66 90                	xchg   %ax,%ax
 77c:	66 90                	xchg   %ax,%ax
 77e:	66 90                	xchg   %ax,%ax

00000780 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 780:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 781:	a1 e0 0c 00 00       	mov    0xce0,%eax
{
 786:	89 e5                	mov    %esp,%ebp
 788:	57                   	push   %edi
 789:	56                   	push   %esi
 78a:	53                   	push   %ebx
 78b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 78e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 798:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 79f:	00 
 7a0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7a2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7a4:	39 ca                	cmp    %ecx,%edx
 7a6:	73 30                	jae    7d8 <free+0x58>
 7a8:	39 c1                	cmp    %eax,%ecx
 7aa:	72 04                	jb     7b0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7ac:	39 c2                	cmp    %eax,%edx
 7ae:	72 f0                	jb     7a0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7b0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7b3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7b6:	39 f8                	cmp    %edi,%eax
 7b8:	74 36                	je     7f0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7ba:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7bd:	8b 42 04             	mov    0x4(%edx),%eax
 7c0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7c3:	39 f1                	cmp    %esi,%ecx
 7c5:	74 40                	je     807 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7c7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7c9:	5b                   	pop    %ebx
  freep = p;
 7ca:	89 15 e0 0c 00 00    	mov    %edx,0xce0
}
 7d0:	5e                   	pop    %esi
 7d1:	5f                   	pop    %edi
 7d2:	5d                   	pop    %ebp
 7d3:	c3                   	ret
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7d8:	39 c2                	cmp    %eax,%edx
 7da:	72 c4                	jb     7a0 <free+0x20>
 7dc:	39 c1                	cmp    %eax,%ecx
 7de:	73 c0                	jae    7a0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 7e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7e3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7e6:	39 f8                	cmp    %edi,%eax
 7e8:	75 d0                	jne    7ba <free+0x3a>
 7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 7f0:	03 70 04             	add    0x4(%eax),%esi
 7f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7f6:	8b 02                	mov    (%edx),%eax
 7f8:	8b 00                	mov    (%eax),%eax
 7fa:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7fd:	8b 42 04             	mov    0x4(%edx),%eax
 800:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 803:	39 f1                	cmp    %esi,%ecx
 805:	75 c0                	jne    7c7 <free+0x47>
    p->s.size += bp->s.size;
 807:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 80a:	89 15 e0 0c 00 00    	mov    %edx,0xce0
    p->s.size += bp->s.size;
 810:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 813:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 816:	89 0a                	mov    %ecx,(%edx)
}
 818:	5b                   	pop    %ebx
 819:	5e                   	pop    %esi
 81a:	5f                   	pop    %edi
 81b:	5d                   	pop    %ebp
 81c:	c3                   	ret
 81d:	8d 76 00             	lea    0x0(%esi),%esi

00000820 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 820:	55                   	push   %ebp
 821:	89 e5                	mov    %esp,%ebp
 823:	57                   	push   %edi
 824:	56                   	push   %esi
 825:	53                   	push   %ebx
 826:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 829:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 82c:	8b 15 e0 0c 00 00    	mov    0xce0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 832:	8d 78 07             	lea    0x7(%eax),%edi
 835:	c1 ef 03             	shr    $0x3,%edi
 838:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 83b:	85 d2                	test   %edx,%edx
 83d:	0f 84 8d 00 00 00    	je     8d0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 843:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 845:	8b 48 04             	mov    0x4(%eax),%ecx
 848:	39 f9                	cmp    %edi,%ecx
 84a:	73 64                	jae    8b0 <malloc+0x90>
  if(nu < 4096)
 84c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 851:	39 df                	cmp    %ebx,%edi
 853:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 856:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 85d:	eb 0a                	jmp    869 <malloc+0x49>
 85f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 860:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 862:	8b 48 04             	mov    0x4(%eax),%ecx
 865:	39 f9                	cmp    %edi,%ecx
 867:	73 47                	jae    8b0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 869:	89 c2                	mov    %eax,%edx
 86b:	39 05 e0 0c 00 00    	cmp    %eax,0xce0
 871:	75 ed                	jne    860 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 873:	83 ec 0c             	sub    $0xc,%esp
 876:	56                   	push   %esi
 877:	e8 1f fc ff ff       	call   49b <sbrk>
  if(p == (char*)-1)
 87c:	83 c4 10             	add    $0x10,%esp
 87f:	83 f8 ff             	cmp    $0xffffffff,%eax
 882:	74 1c                	je     8a0 <malloc+0x80>
  hp->s.size = nu;
 884:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 887:	83 ec 0c             	sub    $0xc,%esp
 88a:	83 c0 08             	add    $0x8,%eax
 88d:	50                   	push   %eax
 88e:	e8 ed fe ff ff       	call   780 <free>
  return freep;
 893:	8b 15 e0 0c 00 00    	mov    0xce0,%edx
      if((p = morecore(nunits)) == 0)
 899:	83 c4 10             	add    $0x10,%esp
 89c:	85 d2                	test   %edx,%edx
 89e:	75 c0                	jne    860 <malloc+0x40>
        return 0;
  }
}
 8a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8a3:	31 c0                	xor    %eax,%eax
}
 8a5:	5b                   	pop    %ebx
 8a6:	5e                   	pop    %esi
 8a7:	5f                   	pop    %edi
 8a8:	5d                   	pop    %ebp
 8a9:	c3                   	ret
 8aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8b0:	39 cf                	cmp    %ecx,%edi
 8b2:	74 4c                	je     900 <malloc+0xe0>
        p->s.size -= nunits;
 8b4:	29 f9                	sub    %edi,%ecx
 8b6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8b9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8bc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 8bf:	89 15 e0 0c 00 00    	mov    %edx,0xce0
}
 8c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8c8:	83 c0 08             	add    $0x8,%eax
}
 8cb:	5b                   	pop    %ebx
 8cc:	5e                   	pop    %esi
 8cd:	5f                   	pop    %edi
 8ce:	5d                   	pop    %ebp
 8cf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 8d0:	c7 05 e0 0c 00 00 e4 	movl   $0xce4,0xce0
 8d7:	0c 00 00 
    base.s.size = 0;
 8da:	b8 e4 0c 00 00       	mov    $0xce4,%eax
    base.s.ptr = freep = prevp = &base;
 8df:	c7 05 e4 0c 00 00 e4 	movl   $0xce4,0xce4
 8e6:	0c 00 00 
    base.s.size = 0;
 8e9:	c7 05 e8 0c 00 00 00 	movl   $0x0,0xce8
 8f0:	00 00 00 
    if(p->s.size >= nunits){
 8f3:	e9 54 ff ff ff       	jmp    84c <malloc+0x2c>
 8f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8ff:	00 
        prevp->s.ptr = p->s.ptr;
 900:	8b 08                	mov    (%eax),%ecx
 902:	89 0a                	mov    %ecx,(%edx)
 904:	eb b9                	jmp    8bf <malloc+0x9f>
