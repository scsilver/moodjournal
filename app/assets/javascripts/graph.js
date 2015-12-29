
$.ajax({
           type: "GET",
           url: '/entries.json',
           dataType: 'json',
           success: function (data) {
             var set = []
             var negativity = []
             var positivity = []

             $.each( data, function( key, value ) {
                set.push([value.intensity]);
                negativity.push([value.negative]);
                positivity.push([value.positive]);



             });

             draw(set,negativity,positivity);

           },
           error: function (result) {
               error();
           }
       });

function draw(data,n,p) {
    var color = d3.scale.category20b();
    var width = 420,
        barHeight = 20;

    var x = d3.scale.linear()
        .range([0, width])
        .domain([0, d3.max(data)]);

    var chart = d3.select("#graph")
        .attr("width", width)
        .attr("height", barHeight * data.length);

    var bar = chart.selectAll("g")
        .data(data)
        .enter().append("g")
        .attr("transform", function (d, i) {
                  return "translate(0," + i * barHeight + ")";
              });

    bar.append("rect")
        .attr("width", x)
        .attr("height", barHeight - 1)
        .style("fill", function (d, i) {
          var color= "";
                  debugger;
                  if (n[i] == "true") {
                    color = "red";
                  }
                 if (p[i] == "true") {
                 color = "green";
                }
                 return color;

               })

    bar.append("text")
        .attr("x", function (d) {
                  return x(d) - 30;
              })
        .attr("y", barHeight / 2)
        .attr("dy", ".35em")
        .style("fill", "white")
        .text(function (d) {
                  return d;
              });
}

function error() {
    console.log("error")
}
