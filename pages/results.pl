motorcycle(Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice, Results):-
	bagof(Answer, rule(_, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer), Results).

results(Request):-
  format('Content-type: text/html~n~n'),
  member(method(post), Request), !,
  http_read_data(Request, Data, []),
  term_to_atom(Brakes, Data.brakes),
  term_to_atom(Tyres, Data.tyres),
  term_to_atom(Fuel, Data.fuel),
  term_to_atom(Helmet, Data.helmet),
  term_to_atom(Jacket, Data.jacket),
  term_to_atom(Trousers, Data.trousers),
  term_to_atom(Temp, Data.temp),
  term_to_atom(Rain, Data.rain),
  term_to_atom(WetRoad, Data.wetRoad),
  term_to_atom(Ice, Data.ice),
  motorcycle(Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice, Results),
  header,
  print_html(['
    <div class="bg-blue-200 px-6 py-4 mx-2 my-4 rounded-md text-lg flex items-center mx-auto w-3/4 xl:w-2/4">
      <svg viewBox="0 0 24 24" class="text-blue-600 w-5 h-5 sm:w-5 sm:h-5 mr-3">
        <path
          fill="currentColor"
          d="M12,0A12,12,0,1,0,24,12,12.013,12.013,0,0,0,12,0Zm.25,5a1.5,1.5,0,1,1-1.5,1.5A1.5,1.5,0,0,1,12.25,5ZM14.5,18.5h-4a1,1,0,0,1,0-2h.75a.25.25,0,0,0,.25-.25v-4.5a.25.25,0,0,0-.25-.25H10.5a1,1,0,0,1,0-2h1a2,2,0,0,1,2,2v4.75a.25.25,0,0,0,.25.25h.75a1,1,0,1,1,0,2Z"
        ></path>
      </svg>
      <span id="results" class="text-center text-blue-800">', Results,'</span>
    </div>
    <script>
    window.onload = () => {
      const res = document.getElementById("results");
      res.innerText = res.innerText.replace("[", ""); 
      res.innerText = res.innerText.replace("]", ""); 
    };
    </script>
  ']),
  footer.