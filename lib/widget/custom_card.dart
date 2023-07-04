import 'package:flutter/material.dart';
import 'package:store_app/modeles/get_product.dart';
import 'package:store_app/screens/updeta_product_page.dart';

class CustomCard extends StatelessWidget {
   CustomCard({required this.product}) ;
   GetProduct product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdetaProductPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 130,
            width: 150,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(10, 10),
              )
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " HandBad LV ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r" $225",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 55,
            bottom: 80,
            child: Image.network(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQA3gMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAABAgAEBQMGB//EADoQAAEDAwEFAwoEBgMAAAAAAAEAAgMEBRESBiExQXETUYEVIjJSYZGSobHBFCNC0SQzY3KC4URlc//EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACERAQEAAgICAwEBAQAAAAAAAAABAhEDEiExEyJRQfBh/9oADAMBAAIRAxEAPwC+EQlCIK9L2GRShMqpgmBSBMi6OCmSBMFVOEwXPKcFEME65hOCiGTBIEyBkyaOnmeMtjci6CVgy+NwHeVntj+oRHKCi0CSogogKCKCCIKKIIlKJSEoCkKOUpKDMCYJG8EwWWtHRShEK7UwTJQU2UDJgkymCBkQlRQdAVWu1cLZbJbhI0OiiexrxqxucSM58F3ar9sZFKKps7ohH2JB7UDTnlnPtCzyZdcds5eIzbfWxV1KypiD2xu3jW3B9yDri5s34eihbPUne7WcMiHe49/cBvK43eSktNg02yljgbGB250uDGuO8aRwA45x3q9FaX2Vv4STU6T0nzHjMT+rx+W4LhhyfN9ZUss1vw4upaiowa64Vch9SGV0DB0DCDjqSgLXC06oqiuif6za2U+8FxB8QrYRXeYYz+HVlCuqKCuhpbi5ssM50wVWkNJd6sgG7J5EceC18rL2lphVWSqZwexuthHEFu/91ZtFWa610lS70pYml3XG/wCaY+L1FxRBTK2uhQUUQ0iBUJQyhpEhRJKUoaRKUUEGU1dAuYTtWGjBMlCZUFMEqIRTJglRCoYFFKmBQM3jxWNQU0132jfbbu2LsJZf4RnF7g0Ak8cAcs4zkrYHu6q3YaRku1TXPcNdNSNkxje3W84+TPmuPPrrpnLLrF247YW976uyVlFJDUR/lPhkewl27cRvwQdxys6t2jpaiKmp6qobPcn8IIcF0G7OH6TuyjfLda7zWG7VkDnVkZMHmvIBfG8jJGeHNU46OljqDUMhY2cjBkA3lc+LHK3x6YnHr37XAdwzuRSDhyRyvW6ONwc1tBUF5Ab2bvphY+w1WaizviI3U9Q+Np9mcj6rvtUXOtD4o5mwPkcAJHncznq9uENkbe2321/ZBzWTSGRsZcXFgwBjJ4ndnxXK37sX23AUcpcjOMjPdlTK6NjlRDKhKCFBBBU0KUo5QQDKBKOUuUGWF0C5hdAsKYFFKEwQFEIIqhkyUBMEBSTyCGCWU8GMc4+AymVO9v7O0Vbu+Mt9+77pfSVx2cr21tkpq27VRp3wThk748Ydv5jG/cRwC1tmqoXzaTaGe3PaYpI2ClmjduwwENIPUryuykrI6N7HlmhlUX4ecA4YD9lsbDUMM+LLFJJEHW/taqaF2Hte5wLA0juwfevnZcltkTGS7t/3l3u01bLTxVzYpINNQ2WujaN7CGmOXA7gQw9CFrMpYhxnkd7Csm9tjtlNJaaSvqZ5Ae0q6ipIwyEjB3gb87h35AVi2yy/goRP/NDQ15HAkbifllYxzsvV25dZW5Y+mmIIPWciIoBzcVV155qa1rvf1xPWUFvrYTDWQdtETktcq0Vjs8Y0spC1vcJHAe7K660wenapY60dBbqRzn01NHG9ww5w4nxUqi0TAMG4tXPtFze/8yPxC3xZ2ZwkdEFFF9FvSIFQoKAFAlQpSgJKQlFBBnBOEjU4WQwTIBMi6RNhAJwqukCiiKGkCydp5NFqc3PpvaPmtZYO1zv4anj9aQu9w/2scl+tSxgUsEslruDHW2apgmkbDFJG3IjlLRknuwCN/tX0yxWs2zbKukYD2ctMxjW8gGn/AGF5jY+fRZamP/sc+z0IwvQ1G0TZr7K+kGYuxcyORoGp7yW4PTdu6rwWfaZOW71uLH2kM1de663tPYUlZqZrP6nxjJI+Y96NlnZLTflziYNOAQNzRyHgMKxW2y61Wz8s9dLHLc3S/lStjDTF7AfYc/svO0dwo7RNW0+qV2ipcCQzOcdPELhJZn5eiWXj1HrQ/cpqU2fvFJU22KbLGl7n41R+dgOOMjotJ1zp3DBkLh/5E/Zd+jzfIzQ5HUsS8XySC51EdPROnYC0h2rRuLRuxp6qk7aG4/otjR1mJ+yzqtyvU6lyqHaBG/ukb8zj7ryzr/djwo4m9dR+66Q3S5VLXCdkcbGkO81pycEHmVrHxYr1x3KZQ3cuCi+m3pECooUTQJSilRdIlTJUTTPYF0CVrV0AWVkEIogJg1GgATAKAIoIoiogC81tW7NTTM7mF3vP+l6ZeU2kdquuPUja36n7rlzXWCZeljZQGW2XCNu4iq1A/wCI/ZXNlKKlpbhS0VRKJXaHOjJJGRq4DphVtiXMbS3J0jg1jZGuLnHAA84Zz4LKh2jdHtNEadrmwMfqYHOwJWH0t3LvC8WWPqsYecbH2C4SNa3S0sYGjiSAM+K8DLauwt0ElW1n4qUl04BzhxAz48V32pmg2gtVNV0lZ/DPH5keSGuDu8esFlWS5SXChDX6nCJ2C8jc48N3s3fNZy5d5akb4+Drx7tXNkHVDaOWIsAhZUuEZ3cM7/qteeWqqKcCliMMnmuJmIPB+HN3cMgHHVYEEddStfHSVRijc9z8BoOCePFPpuZ43GbwwPsunaPPeG2r9VGHXCpeQBlzSB3DSEvZM7glpWSMZ+dI6V54vccldSudvl1xmppxdCw8kDE0RvGOIK7FDiCCi6aFMdVNEe9g+i6qvQHNFESd+F3z7V9XG+I3EKCPigSFdgFAhElLlNiJSigVDS8LfT+qfiTeT6f1XfErQCYBebtXXwqi30/NrviTi302ODviKs4TYTtRV8n03qu+JHyfTc2n4lawonait5PpuTT8RU8n0vNh+IqyUMp2qK/k+l9U/EV862mDRfatkfotcGjwAX0zX7dy+ZXtr33msfpODKTlYzt058t1GNNO6O2Gn/M7Opnb2giGXODXEgDxKustNVdrlShtGIKenIdKTk5ONzc81rbKhjKqj1tDmymRm8A8ScfRe6mFNSRumqXaGs37x8ly9uO9Pnk9E0GWilBEIkyGsdgDHDGFoUUbYowyNulo4BV9ZlmfKR6bicd29Woty5adt3S0Ey5NKbUqmnXKhcFx1oa1F06lyGVy1KagqmnobJQU9RbWSP7TUXOBw/HAq95Jpf6vxqrsw/NuI9WV32P3WyvVjldNzWlDyTTcu1+NA2qn/q/GtBBb7VdRn+S6fvk+NDyXB3y/GtDCCdqeGf5NgHOT4kDboO9/vWgQgQp2q6jiGpg1OGpwFk25hqbCcDKhagRAgrBrK6tt9yleGkQvIIa/e07gN3cte33SmrcNB0Sn9DufQ810xxlZy7SeHUtK5uBCvFiRzBje4BdOkc5nlWZKXjhleGuuuK7SxTjDJvzInHn3hfQ5Wxc3g9F53aa0QXOjdEXuY9u+N4G9pWc8JZouOWfh5agcW0NNJEcSNPaMPtzkLVvVwfcZ2EHTE1o0s7jjfn2rGNmfTDE1xq3ADADS1oA7uCqzCFowJah3SVx+hXkuFdfj17a7ABy3LqHgLy0jZXfyoqt/Vz/3Vd9Bc5T5lJP4lxWfj/6av49j27W8XAeKR1dTt9OeIdXheNOy95qP+HJg94TU2wV5NRE8UZIa8Eg92Vfjn6z9vx6l97tjPTr6YHmO1CrSbS2loOKxrz3MBd9AvYUdgpowC+1szjiYM/ZaUNPBBgCjpx1gH7LrOGfrV48/4+cHaehP8ttTJ/bA5GO+vneGRW+s3nGp0ZAC+pRzxN3fhIMexuFYjrYOcGnphdJw4udw5IydmaeWntzWyYLnvL3Y5ZA/YLcEZRbXUxPNvULqyogd6MrPfhdOuLO85/HLs3dyBjd3KyMO4OHgVMJ0jPyZRW0Eckuk9ytkDCBA7ln42vlVCECFZLQeQQ0DkFPjq/LFcBNhBMFzdNoAm0qI4RNuU1PHOwslYHNPIrArrA+I9pROLm8ezPEdCvTYRwq1M7GNbjVvpIxIJdQyDqBzxKuNpZTvIx1Kvojgtd6doofgifSeP8Qldbo3DDtbupx9FpIaVm2nesN9honnzoQeu9RtipGnzYWjwW7pR0rB3rJjtVO3hE33Kwyjjbwjb7le0o4TSd6rCBo/SPcujYwOS7YUwidiBqbAI84A9UcI4VRxdTwO9KJnuXJ1vp38A5vRytqKy1e1n9UHWtn6JnA+0Ark62v/AEvaT7QVqKLXarM6xjR1TODM/wBrkCauPiJgOm5bKiver3Yv46ob+sHqE7bnIPSjY7otVzQ7iM9VxdSwP4xN9y18ifS+4qtuTD6UTh0Ti4U54kjq1M63054BzehXF1rYT5srh1AKveJ0466pgoouIZFRREFMoogJRHBRRAyiiiAhRRRQFRRREQIqKICFEVEQFEVFQpUUURUKHJRRAEFFEESqKIP/2Q==',
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}
