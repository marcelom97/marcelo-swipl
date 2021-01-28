form:-
  write('
    <div class="bg-gray-200 min-h-screen pt-2 font-mono">
      <div class="container mx-auto">
        <div class="inputs w-full max-w-2xl p-6 mx-auto">
          <h2 class="text-center text-2xl text-gray-900">Good Title</h2>
          <form method="POST" action="/results" class="mt-6 border-t border-gray-400 pt-4">
            <div>
              <label>Do the brakes work properly?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="brakes" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>Are the tyres damaged?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="tyres" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>Do the fuel tank is at least half the amount?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="fuel" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>Do you have a helmet?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="helmet" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>Do you have a hard leather jacket?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="jacket" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>Do you have protective trousers?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="trousers" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>What is the temperature right now?</label>
              <div class="flex-shrink w-full inline-block relative">
                <input name="temp" type="number" value="25" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded" />
              </div>
            </div>
            <div>
              <label>Does it rain?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="rain" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>Is the road wet?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="wetRoad" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div>
              <label>Does the road has ice?</label>
              <div class="flex-shrink w-full inline-block relative">
                <select name="ice" class="shadow block appearance-none text-gray-600 w-full bg-white border border-gray-400 shadow-inner px-4 py-2 pr-8 rounded">
                  <option selected="selected">maybe</option>
                  <option>yes</option>
                  <option>no</option>
                </select>
              </div>
            </div>
            <div class="flex justify-end">
              <button
                type="submit"
                class="border border-indigo-500 bg-indigo-500 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:bg-indigo-600 focus:outline-none focus:shadow-outline"
              >
                Submit
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  ').