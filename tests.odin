package test

import "core:fmt"
import "core:mem"
print :: fmt.println
printf :: fmt.printf


main :: proc() {

	my_list := [?]int{4, 1, 9, -2, 0}
	val := find_largest_and_smallest(my_list[:])
	defer delete(val)

	print(val)

}

find_largest_and_smallest :: proc(
	nums: []int,
	the_allocator := context.allocator,
) -> [dynamic]int {
	local_array := make([dynamic]int, allocator = the_allocator)
	smallest := min_iterable(nums)
	largest := max_iterable(nums)
	append(&local_array, smallest)
	append(&local_array, largest)

	return local_array
}
