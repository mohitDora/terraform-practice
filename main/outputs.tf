#for single output
# output "instance_public_ip" {
#     value = aws_instance.my_instance.public_ip
# }

#for multiple output if using count
# output "instance_public_ip" {
#     value = aws_instance.my_instance[*].public_ip
# }

#for multiple output if using for_each
output "instance_public_ip" {
    value = [
        for instance in aws_instance.my_instance:
        instance.public_ip
    ]
}