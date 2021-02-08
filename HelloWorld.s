	.file "HelloWorld.lpr"
# Begin asmlist al_procedures

.section .text.n_main
	.balign 4
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
	stmfd	r13!,{r3,r14}
	bl	fpc_initializeunits
	mov	r0,#0
	bl	CONSOLE_$$_CONSOLEDEVICEGETDEFAULT$$PCONSOLEDEVICE
	mov	r2,#1
	mov	r1,#0
	bl	CONSOLE_$$_CONSOLEWINDOWCREATE$PCONSOLEDEVICE$LONGWORD$BOOLEAN$$LONGINT
	ldr	r1,.Lj3
	bl	CONSOLE_$$_CONSOLEWINDOWWRITELN$LONGINT$ANSISTRING$$LONGWORD
	mov	r0,#0
	bl	THREADS_$$_THREADHALT$LONGWORD$$LONGWORD
	bl	fpc_do_exit
	ldmfd	r13!,{r3,r15}
.Lj3:
	.long	.Ld1
.Le0:
	.size	main, .Le0 - main
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$p$helloworld_$$_windowhandle
	.balign 4
	.size U_$P$HELLOWORLD_$$_WINDOWHANDLE,4
U_$P$HELLOWORLD_$$_WINDOWHANDLE:
	.zero 4

.section .data.n_INITFINAL
	.balign 4
.globl	INITFINAL
INITFINAL:
	.long	62,0
	.long	INIT$_$SYSTEM
	.long	0,0
	.long	FINALIZE$_$OBJPAS
	.long	SYSUTILS$_$TENCODING_$__$$_create
	.long	SYSUTILS$_$TENCODING_$__$$_destroy
	.long	INIT$_$SYSUTILS
	.long	FINALIZE$_$SYSUTILS
	.long	INIT$_$GLOBALCONFIG
	.long	FINALIZE$_$GLOBALCONFIG
	.long	INIT$_$HEAPMANAGER
	.long	0
	.long	INIT$_$DOS
	.long	0
	.long	INIT$_$PLATFORM
	.long	FINALIZE$_$PLATFORM
	.long	INIT$_$LOCALE
	.long	0
	.long	INIT$_$UNICODE
	.long	0
	.long	INIT$_$THREADS
	.long	FINALIZE$_$THREADS
	.long	INIT$_$DEVICES
	.long	FINALIZE$_$DEVICES
	.long	INIT$_$DMA
	.long	0
	.long	INIT$_$FRAMEBUFFER
	.long	0
	.long	INIT$_$FONT
	.long	0
	.long	INIT$_$CONSOLE
	.long	0
	.long	INIT$_$LOGGING
	.long	FINALIZE$_$LOGGING
	.long	INIT$_$SERIAL
	.long	0
	.long	INIT$_$UART
	.long	0
	.long	INIT$_$RTC
	.long	0
	.long	INIT$_$USB
	.long	FINALIZE$_$USB
	.long	INIT$_$SCSI
	.long	0
	.long	INIT$_$STORAGE
	.long	FINALIZE$_$STORAGE
	.long	INIT$_$MMC
	.long	FINALIZE$_$MMC
	.long	INIT$_$PL18X
	.long	FINALIZE$_$PL18X
	.long	INIT$_$TYPINFO
	.long	FINALIZE$_$TYPINFO
	.long	INIT$_$CLASSES
	.long	FINALIZE$_$CLASSES
	.long	INIT$_$TIMEZONE
	.long	0
	.long	INIT$_$ULTIBO
	.long	FINALIZE$_$ULTIBO
	.long	INIT$_$NETWORK
	.long	FINALIZE$_$NETWORK
	.long	INIT$_$SMC91X
	.long	FINALIZE$_$SMC91X
	.long	INIT$_$KEYMAP
	.long	0
	.long	INIT$_$KEYBOARD
	.long	FINALIZE$_$KEYBOARD
	.long	INIT$_$MOUSE
	.long	FINALIZE$_$MOUSE
	.long	INIT$_$FILESYSTEM
	.long	FINALIZE$_$FILESYSTEM
	.long	INIT$_$EXTFS
	.long	FINALIZE$_$EXTFS
	.long	INIT$_$FATFS
	.long	FINALIZE$_$FATFS
	.long	INIT$_$NTFSCONST
	.long	FINALIZE$_$NTFSCONST
	.long	INIT$_$NTFSUTILS
	.long	FINALIZE$_$NTFSUTILS
	.long	INIT$_$NTFS
	.long	FINALIZE$_$NTFS
	.long	INIT$_$CDFS
	.long	FINALIZE$_$CDFS
	.long	INIT$_$VIRTUALDISK
	.long	FINALIZE$_$VIRTUALDISK
	.long	INIT$_$TRANSPORT
	.long	0
	.long	INIT$_$PROTOCOL
	.long	0
	.long	INIT$_$LOOPBACK
	.long	0
	.long	INIT$_$ARP
	.long	0
	.long	INIT$_$IP
	.long	0
	.long	INIT$_$IPV6
	.long	0
	.long	INIT$_$ICMP
	.long	0
	.long	INIT$_$ICMPV6
	.long	0
	.long	INIT$_$UDP
	.long	0
	.long	INIT$_$TCP
	.long	0
	.long	INIT$_$IGMP
	.long	0
	.long	INIT$_$RAW
	.long	0
	.long	INIT$_$DHCP
	.long	0
	.long	INIT$_$DNS
	.long	0
	.long	INIT$_$SOCKETS
	.long	0
	.long	INIT$_$WINSOCK2
	.long	0
	.long	INIT$_$CRYPTO
	.long	FINALIZE$_$CRYPTO
	.long	INIT$_$AUTHENTICATION
	.long	0
	.long	INIT$_$SERVICES
	.long	0
	.long	INIT$_$QEMUVERSATILEPB
	.long	0
.Le1:
	.size	INITFINAL, .Le1 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 4
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	5
	.long	THREADVARLIST_$SYSTEM
	.long	THREADVARLIST_$DOS
	.long	THREADVARLIST_$LOGGING
	.long	THREADVARLIST_$CLASSES
	.long	THREADVARLIST_$NETWORK
.Le2:
	.size	FPC_THREADVARTABLES, .Le2 - FPC_THREADVARTABLES

.section .rodata.n_FPC_RESOURCESTRINGTABLES
	.balign 4
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.long	3
	.long	RESSTR_$SYSCONST_$$_START
	.long	RESSTR_$SYSCONST_$$_END
	.long	RESSTR_$MATH_$$_START
	.long	RESSTR_$MATH_$$_END
	.long	RESSTR_$RTLCONSTS_$$_START
	.long	RESSTR_$RTLCONSTS_$$_END
.Le3:
	.size	FPC_RESOURCESTRINGTABLES, .Le3 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 4
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.long	0
.Le4:
	.size	FPC_WIDEINITTABLES, .Le4 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 4
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.long	0
.Le5:
	.size	FPC_RESSTRINITTABLES, .Le5 - FPC_RESSTRINITTABLES

.section .fpc.n_version
	.balign 8
__fpc_ident:
	.ascii	"FPC 3.1.1 [2021/02/06] for arm - ultibo"
.Le6:
	.size	__fpc_ident, .Le6 - __fpc_ident

.section .data.n___stklen
	.balign 4
.globl	__stklen
__stklen:
	.long	262144
.Le7:
	.size	__stklen, .Le7 - __stklen

.section .data.n___heapsize
	.balign 4
.globl	__heapsize
__heapsize:
	.long	256
.Le8:
	.size	__heapsize, .Le8 - __heapsize

.section .bss.n___fpc_initialheap
	.balign 8
	.globl __fpc_initialheap
	.size __fpc_initialheap,256
__fpc_initialheap:
	.zero 256

.section .data.n___fpc_valgrind
	.balign 4
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
.Le9:
	.size	__fpc_valgrind, .Le9 - __fpc_valgrind
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n_.Ld1
	.balign 8
.Ld1$strlab:
	.short	0,1
	.long	-1,13
.Ld1:
	.ascii	"Hello Ultibo!\000"
.Le10:
	.size	.Ld1$strlab, .Le10 - .Ld1$strlab
# End asmlist al_typedconsts

