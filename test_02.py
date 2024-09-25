def find_largest_and_smallest(nums: list[int]) -> list[int]:
    local_array = []
    smallest = min(nums)
    largest = max(nums)
    local_array.append(smallest)
    local_array.append(largest)

    return local_array


def main() -> None:
    val = find_largest_and_smallest([4, 1, 9, -2, 0])
    print(val)


if __name__ == '__main__':
    main()
