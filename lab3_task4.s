.data
shahad: .string "shahad"

.text
main:
    la x2, shahad
    lb x4, 0(x2)
    addi x4, x4, -32
    sb x4, 0(x2)

    lb x4, 1(x2)
    addi x4, x4, -32
    sb x4, 1(x2)

    lb x4, 2(x2)
    addi x4, x4, -32
    sb x4, 2(x2)

    lb x4, 3(x2)
    addi x4, x4, -32
    sb x4, 3(x2)

    lb x4, 4(x2)
    addi x4, x4, -32
    sb x4, 4(x2)

    li a7, 10
    ecall