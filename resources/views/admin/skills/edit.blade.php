<x-layouts.admin>
    <form action="{{ route('admin.skills.update', $skill->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="w-full flex justify-center items-center">
            <div class="bg-gray-900 text-white rounded-md px-12 py-6 w-1/2">
                <table class="w-full">
                    <tr>
                        <td><label for="title">Skill Title</label></td>
                        <td><label for="title">:</label></td>
                        <td class="py-3">
                            <input type="text" name="title" id="title" value="{{ old('title', $skill->title) }}" required class="w-full bg-white text-black">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="persen">Skill Percentage</label></td>
                        <td><label for="persen">:</label></td>
                        <td class="py-3">
                            <input type="number" name="persen" id="persen" min="0" max="100" value="{{ old('persen', $skill->persen) }}" required class="w-full bg-white text-black">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-right py-3">
                            <button type="submit" class="bg-white text-black py-2 px-6 rounded-md">Update Skill</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</x-layouts.admin>
