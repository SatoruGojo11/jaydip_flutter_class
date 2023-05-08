import 'package:flutter/material.dart';

class StepperApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StepperAppState();
  }
}

class StepperAppState extends State<StepperApp> {
  var Steps = [
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTXJwIR5ILSSk9O1sp0ilbQnQ4c8em20GUCfmmXkUQ5mq1ZSos7bqE6o0LhIVcZ7F7zdw&usqp=CAU'),
      // ),
      title: Text('Iron Man'),
      content: Text('Go to 2nd'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://www.idg.se/editorial/980/path/1.760092.1639570023!imageUploader/981490532.jpg'),
      // ),
      title: Text('Spider Man'),
      content: Text('Go to 3rd'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://www.hollywoodreporter.com/wp-content/uploads/2022/06/Doctor-Strange-in-the-Multiverse-of-Madness-Digital-Download-Amazon-EMBED-2022.jpg?w=608'),
      // ),
      title: Text('Dr. Strange'),
      content: Text('Go to 4th'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhUYGRgaGhkYGRwcGhwYGhgYGh4aGRwZGRwcIS4lHB4rHxoaJzgnKy8xNTU1GiU7QDs0Py40NTEBDAwMEA8QHxISHjQrJSs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAQQAwgMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAIEBQYBB//EAD4QAAIBAgQEAwYEBgECBwEAAAECEQAhAwQSMQVBUWEicYEGEzKRofBCYrHBFFJy0eHxByOSJFSCo7LC0hf/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAkEQEBAAICAwACAgMBAAAAAAAAAQIRITEDEkFRYSIyQnGBE//aAAwDAQACEQMRAD8A8ZpUopRQCpUopRQCpV2DXdJ6UA2lTxhmJgxt6mY/Q/KkMMnlQDKVP92eldOERyoGw6VF9y0TBjaeU9PpSOAwEwY68qNDYVKnFD0rq4ZPKgGUqdpPSuQaA5SpRSigFSpRSigFSpRSigFSpRSIoBUqVKgHJXa4lOoDldpAU7TTBAU9Fmmqt6l5ZIa9ORNoYQ/f62ptWwywba3lQ8fhTr9L7cpM+VaelR7RCEAfdjyrjKv830INdZDRstlWb4RJ8vlR6nuCBwQFUMsfCVMFjz1EmxjUNto35zBnGTAbD0EYTwBqgkNqXW6WGliE0EXA1G87vyvCMRSHdCQDOlpUGBPxeV+tQMdHSQVMEzBmJ2kDkeU7xTuGu0zKW8O/9N4GjSADJklix5knkBA9Ji9R8bLKD8Tfqe3lRMRGRogE22uCCJEehFOGSZgWa3O/+amxW0bOEEkgECfDMTp5T3qJUxEsZuCN/p6VDNRVw2lSNKpMiKVKlQCrlKu0AqY1Ppr0A2lSpUB1adXErtAdBp4ah04UwNhH51aYC6RESSY677CqlKsctjxY7G3pV4s8o0PDkVdx8PxT84rvtFjlsLCzOH4dZbCxlHw+8SIJG3iQqR69KYjg4TMuwHfckD96j8Px9eDmMswnXpxcM7xjYeqRH58Mus9dNdWXGM0xxm6dw/MYLAa8MSdyD36HapuZ45h4ZjCVVEdBM9Z3rH+8YCNokfWmBzH71P8A66nEVfFLd1dZ7j+I8gmx+wRzqDj8VxWgs5aRvflNv1qvJmn4aSCPUfU/oDWeWVyrTHHGLLL8ZYW0pq66RPltULHzRLatRO+/6Ry9KhkRY+VdqbaqYyJ+Oh0IeoP6z+4qFFXDoBlkJm5YjuIUfKQwqteItUZDFGauUUYdNdYqFB0qRpUAqVKu0AqY1OprUBylSpUA5K7SRaIqGgGCnCuskV1Fqi2NgYZJq6ynC2ZS0jw7jfeonCMKXA61vuHPhJKEDa5iTAv69a6fD4vabrn8vkuPERMjwYPg6RPjZFB53YUD2g4O+TZdJ8SqmILfi1NEjzSt7wVUdlCgeF0f/tZSfoDQP+VsjIR+TI6H+tSHT6e8p5Zfy9UYy3H2eS8XyqXdLKWYgdFOhkH/AGv9KpwlvWP3q+yzq+FiIfiRdY7qlv8A4sT5IKp1E6x5Ed4qLG2NDVKNgsUaQSJDKfJht+tPy2HJHettm/YPFTLpjEgSUJnkCRP0pyfRctMBjYd557mhFdvUfWrHPqVJET3qC+y+p+tTlNKmW2uzPDSeHZfE6M6HsQ7xPmAPmKyuMgQ6SL8x0869D4aCeE4gI+DMtpjcKAZk8zLGsBmUYnUxlmJO97GJPnWWRy8h6RXFQGxokQKaIPO9QtExEINDqW2CbzMdqG2WPLb60AGuU5lI3ptAdpjU6uPQDaVKlQB8vRHNBwWiiK01UTRGS1PwEG/PkP701VMUcLAKxJkHvYG1vP6U5CqVlrG29afhcsBC+Lbr86puA5U4rqiJqcm3397V6O/DUyuDcqHM626fkXv3rs8WUxn+3N5N0b2bzGHl3VMVobEYLG+kMCJc/hH96N/yHmdXDWBPjwcTDVtrm0H1VgfU15vxLiKOWVIPiUWgBgWAIPWVMetXntxxHSmG3xDN5XBZhyGLhgAmOxIt3NRnJ7bXhLMdMVkcVUxEYmxYgjqjrpafQxUK6PEzBgHkw2nyNddGK6gCQIBIvGqSs/Jh/wCmu5TBDE39DcE94v6i9TvfTTWu03LYioyspkTc8gZt6bfe+zz3t1iPlzglQALTG/O0elYjEQ4bEoraYBKtDHoSGFmXlqgbwR1BmnBIIJgm46dt/uN+jmXHMK47omZx9ZJG5O1RXXxKOQAn53/SpeWwNbaQRHUmB3JP4VAuT/ijZ7IiSVn3YjxsNJf82mTpWdl6RN5qLunNRpOE8ZX+AzGCq+L3jYpYx4UZVIB/qMjtB6isbmcxLExEnbko5ATepWSwBpeOa6YsCZlh4QZ+FGPyqE6XrKqk5R2Y1zUaI1DqasbCxaJ70UBMImmphmYikDsy0mgVMxCKjulBB01qfFMag3KVKlQD0ogpmHRUWqkKi4JqaUFgDJPIbRsLzeetvM1CVKl5bFKkGR2Bg7bTV4/tGT1L/jjIomG+OVhx4R5W26+dUftbm3xHJYnSPwjkd4MWrS+ymbRsjqV1LDUHAN9TGwYfhmLedZPjywxk2INzzPM+t63xstrKftkMHE0OCwkBgxHZSG/+taD2r1Q2ETP8PiOF5j3bGxHa8+TDrWcxyVJtsYj9u9WuM5C4eMRqV0KPPYlb9Lab8jB5Uvyu/FQodoANto2nnBjuPnWw4R7E/wAQgfK53Lu8AnDaUdTzVheYPOI71mM1ljgspgnDxBKNEB1mCP6gbEcvIgmVmMxl2WY8Qi5ENI6EEfW9Trc4p7d4llMbBxDg46Mjg3BvINtSNsw7iqnMIQxBnkSDuJF/rNS8bNOSHZ2NyBJYkER1JgxzG9G4UEdmLr7wkG7lgNjBAVgQR509W8fRxOQlwDoBsqliG6mD4RHOe1q3GX4dl8LB97nWGJjR/wBDJI/imLHG0yVY2J2gb7kVgRGuAWCgkxqkA9auOF+0CYaFBgguwibAc9+bCOpjtUldzmTYPCdKO74gBAUi+xZ2CQPNRikeVNzWQVhOFJJnwHcT0OxH3feicWyp/hg5szYg1eYQlV9EefNyOVVeDmnWCpvuR3Gxn72pVUn1DxEKmCIINwd/Ig0znWjzSYeLDnHGoqCyYuhGmIJR1EHbZgvkTVTmMiQxChjG4K6WXncVncVbPyCAmD/mjZtBy3/aoGC5Ug/cfc/KpuFih/ONvvzpCq7ESTXHapOdTSaiUjMYUN6KTNDxBSMylSpUAXCFGUULBFXvBuAYmYnSAFHxOxhVnqa0xxt6RllJ2rAvTptVjkco7glVJ5WEnlEWty+tabEyOTyagu3v8Ufh2Uzz01zG9pGwFdVCIzINIRFAGI2lg43soIsZO+1q3xw9eazuVy6az2cwimAuWchXbU5WRqUBdSFlFxLL9KyvtCp954rLCnodUwRa0RPrVb7A59/45dTElw0k8zBMn61Y+1p1ZgYaMNZEEFtKrMXM2UACf90t/wAhMdMrnHXWSIg71YcPOrLuhBOh9YtsjgI9yRbV7rrzqDiZrDQ6cGGeb4jKGLHaEUiEX5sf5htUngueC4o985ZcRGR5kmHICkd1ZQ/oBzmiZc7VZwPk88jIcpjDThEhkaZbCxAIDi3MCGXmD1Aqhz2UbCxGRt1MTyPcHmDuKk8SwCmIymxDRbY9weYIgg9CKNmgcZRzdF+ai4+n9uVKzsSoWXzSwVe4P0PWpnDM7hYZ8RY7yALHy++dU7imGp9riq4ypWZx1JJSRPI9Km8Kw1UNiuoYJACkSHbkpnkTv+UNVRWx4bwrUQh8KoiO7Gwlypk9gsH1ajHnsWzGGe07suFhI5l2VcRrzJfU2o2EEhha/ne1ASARF7C2178/lUnjWdOYx3fZWICDoigIgjrpVfWoeXw2dlCgkkgADeSYH1otEmou+JcHlQ2ES4RFLKVhwG8QJWTNmG36yBnlLL8J+XP/ABWuyWedMVtOpNLEAMBIA8MRBkkC4mDqO9VvtBhgvrVFQn49J8DNvKrfSd5gkHcAUrBL8B4PhDHJw3gQDpaIOomwnnzsajZ/hz4LQ6x0PJvL+1BTMFCIER9fOtfg44zGW0WLWUarmZhSNyTy/wAVOtn0xbuTuaYVq341wF8DxfEh2cfo3Q/SqoCpphGmPRmWg4gpGZSpUqQaH2fTLhWfG1MQ0Kg/FYGSfXa1TczxzGxGXDSUUnSiINMzYAEX9JrPZRoU+dSBiEGQxBvcGDzBiNjFdeF1jwyuMuW6ZilgxXmGIOxuDeCLeop2bxy0Tvdj5sSf3NRm3jlSZYmNjt86i2q0sOBZ73OPh4gE6Gk+RBB899u1X/FER5xiSQZabwRO17wI9TPaspw9yuKh/MAfImDv2NXHHCyYWGmpipXtBG4v2tRjfpWcqJsS7MttwPW36TTcVvF5W8otREwGaAOmo8gJ6nltQ8RYY3B3uKi77WuMXFGLhqxPjURPUDr98/kN30KSPxKFPkLn9qgZTMlLcj9DVjmGXEww4PjUFXWOrEhweYMwekd609txncdVU4hm9Doj0M1nVw5Betz7Q5wJkstpPix8JFbrpwmdWHkSVHcA9KxOWWWAomdxtTWJKrZbkgCSbA7Akk2605dQrN02CTNaf2XzQwHdzKxhOQwAYCLkFSLg22INZfDePSpWWzcapkq6lDBggGDK95Atz2o3BZttXTLZgB8HFRH3927FRPP3bPt/Q9r2bnVVxLAdGOG6sGswkQCrTBggQTpNu3MXqizuAU0mdSsPC3IjmOx7HrR8txJtIR2LIBGk3AWZhQZCmbyBM09l66QcxhkkxeJ2vVn7O4uh1k87ecR+poOXyoXxKZ7HkPOo2HiQ4jr8/lS19NsuJpjyXgYuAVZNJhNLFgseEeIaog329TlON8P9ziFVMoQGQ89LT4W6MCCPStXns7/4dZbwwABPMDmf2rJ4nFC8q6hpIiZMQCBBF+dTYJtX0LGqbiIhYhTFyNwQfJrVGzOAygEixmKmxURqVKlUmkYBsfOiF6jqbV2TW2OWomw8mkrRQzTlbajY0mZBQ2IvhJAIZlG5UXMd4rQ8fyfvMVMNSJO52UKAXZz2Cgt5VU+znhxHjcoyoeQYkQx5ECJI7U3PB1gElSBpN76SNu4IO3enN6pXtEzDqDABgCI67XPXbyqPj7mKdiqbk7mn5jCsGGxCn5j+4NKynKjgVIy+IRdTBH1HSggUh1FKcC8jYwU3+E9N19OlAZO9dLk1wii8icOriRtblPOKYBRNJ6VKymFJEQL3Zth/T1NEmxsbCyELqbfkt5J79P8AdH/gkXDd8XE0t4Rh4aiS7G5JOwUDnuSR63eFkkTCDENq16TqAmGFmI5SQfkBuazvEIDtqEsGIUbhQCTHRunSqykkKXdRsXGYrp2W0KNuxPU0FHIsaJBMmbjlBNrk3FgAI369q5pn9flUKFTFYbAkREedGRVN5huc7iu5YTZFLsPwi4Hck7elBxcFldbRMWHcDp500nZnNMyhJ2MDy/vNBwYVSSASbAnl1A+kn02mbB+HsYIFjMeUA1GzeDB07co6c6LD2h4WEWkjYXYnYDa/9qJm82XAX8K/DO4ERv8AWnnDgVFxxU2ahg0qVKoNKyuUZ/hE3ipCcMxDMLtE9gbCfWm8MzJUx1NarKIWWZW4AEyYgzN7fOunx44ZT7tjnlcazLcLcQGAE9WX+9T09lcYgElFBMSWG/e/bepuYy2Ji4qYSjWxY6fhHi3OqQIgAkzaJpxxy6sQdOEAFGrfbf8AqLbDvAFrXMMd2aK55a4X3APYtsHER8R1ZX1AKtz4Bqgk9Y025MapPaXJ6cUiS2ol1Y8yZmfpHYxyrZezHHsJvdq2Iq+7LKQ5g+IeHfuF+vMGsr7dYo94NBuhmYI5nrv6TRZq/oY5W9sriYLFgiiWaAAOtTMLAQ4BLTqBA3B8JDPtzEwJ/NRMpp0tiswDNKAXHggaiLQZnTY7FqBksVTiqNMqfDp6jnczBib9aidq3wrm5/fyoaLJrRZv2axUwziDTovuSGKCPHtBF435d6qMHLOx0opY/lGr12t60rjyqWA+5NdXAOwBY/IDzNW+Y4Ww0yFVtILIJDAbyVO/nPyrmJxBMNQEXW3ItdVM/wAu3LnJ70esnZb/AAmcJ9mziqHaAkxLHSGIAJ0GPEBqWw3neoeez3uSVRAGBZNTfgiAdC7Ke96uvZz2iDt7nMOQjqww3NxhYh+FiNonwyLjV8qb2lypXFUsI1jWR0NkIt+ZDei3jgsd75A4XnWw21sNQazqZ8aHeTyItB5EA8qJx7LrqDpBUqjKZBJWNILAbNa4k3POoLMTentjscPQROkkr1CmNQ7iQp7X60rFxGwzB+zVljZfUkgg7+GFSCbGIvEEHYDccqrcHr0q0wcYRfkf2NKTgVe8HRUWwHLlzA+UVC4plwWDKenzVdrExt1pZfMKB9T+vIVD4nnDqAnr8pIjn0NO1Oq0+WygZQYnnE7WA/bpUHifDlL9DKyN4mAI++u0Ufh3EYAM8hPKD+1G4jjiSx/KbdgB+w37d6Az2eyWkXUDl2Pp67dqoM4kQTWz42RO4iOvrt9/uchxFpjz+/vvU5dKxQKVKlWShMJoq3yWfYRBtzBuPlVMtGRqvHKxOWMrS5PMJLyWJYBQSdgWBbufCCN/xVCzWbYsQggCI6r+aeTW3Gwt1mCmOABvPO/e0CLfWp2HiM430kXG5HkT/oHnW8yuWOmXrq7P4Ll2d5EkSNREzc2JMda0PtRhYBOGbjVAcj4lCkgE/wA1tPeJFZ8cKJxE/wCpAclWIBDReRE3npI6Vo8xwd0GrGgsmG7xcFl8OlmnYkg23maucTVK63uVlOItCogJKoGjaPExY7C5mbnoKhYZOoMoJIOq3KOdWeYyTENawuT0nn6VTuhV9JsQ0es1ll/GtMeW/wAxiocDDZ9aYYSQtmZ3dnLKnIyRsehrO43HtLzgquGLgFQCSOV2m0dAOZontFnJy+VXZghax3DMzq/b4ovzB6VTZo4fhOGzCVGpTAhlsdrQdxN9+tGWdl4LHCa5abEzT5lNRYFkw3QmykiHKAxGrSzaZP8AMtYwEmrThufKE8xeQSRK8xI2kWnlY8qgYgAJCmQCQDEEgbEiTFLK+2qrGaE0AbbVaZ7iXvsFBiGcTDOlWuS+Gfwn8ykC53B7Xr8skiPvzoj4GmGFx03/AN09cB3L4RYgC9h/q9SDgEmFHiWD6GiZVCCDEq23UdQJ5725/pd5fCHvcNhpIeU2j+ogmLg6fCehtNF6DL5nLxLqCL+Nf5T17qT8jboSD+IkR3n7+dbT2jwkUBgdLgRIFmG0EdKw+OomR/rypWaOXaTh40UHM4xZwe0fr/egBzTZvNRcj0ucLNECDvz8uUd6kvny0rPQeX3f51RriHekmKQZ6VXsWl5xHGP4rk8+Uff3vVBmDb1qViZwtvfzJP8Aio2YxdQFvWSfobCpyvBxGpUqVZmclPWhrTxTAi1MyuYZdvn0qEpouE0Gqxy1U5TazTMOxBVjIKkxMTIiIP1r03AK5lA7fH7kJqizeJCQ0AAxb615Tl1Bb4onbod5n6RXoH/HjktjYbM2goDcSFcsCrc2/CR3muiZWxjlNVTe0nDHQsswAZ7Eg/W8VkMUQQ0bEH5Hb0rfe0/GlXMHDKowJCuzEtdWIMLAuJ3m4ArK8XyToZgaTcEWB8hSysyn7VjwfxXMHEymWJdmOEcTB0lVARQFdNLKJYMC3xTBU8rChRJIj/VEDMw0AmCQY5EiQD8mNT/4BlFwR+/e1ZY47rS3TmYURAUATM82J5k/SKjjBJE7kWPepuOoYCBBI8Q2BPVSdp6HnPLbuVYKybw3huDIINp7EE1r6zadhZXDvPIfp3q2ywWdj2MRfzP3Y0Uou62cbi0Hvfntcf5qH/G6ZGxB2gAenTy2NVrSexMwpSSqAqbsCfDN/hidJm/paoz8RIN43B2m6mVadgw5MBfuLVEzueYwPOB/KDzP5vvpUEbVlllN8Lk/Ky4hxEvf4iQRfkTIJjYEA27meQqtV4Whhq47VFv1WjTXBXWNcFSZ00bLLfaT02HqaDFScsb04SzViRdEPeWMc+sVXcSG3hA8ixn0JMVc4eGCAdRnz/b73qv44kBZ6mqynBRTUqVKslHJXa4ldoBwoiGhinLVQqlIbR+1bb2BxguIyBpOImnEkxYT4VkXN95n98PhNFXnAM77vHR/5W2kgkdZHMGK28fbLOcLT/kDKph5gsmFGtg5YFjq1DUDuQDvtWX4lntekAkCBKydA/pG/wA9thXoPtRkkxCuIzHSy6V0ByVN2UkFyDswkRJU25151hkHVYESRa07wesffKjLH4eF4RsM6WBB2NbL+IGLhrIAMDncAbkWMi237b5M4B29al5bMEeE9xtO+9VjNU8ptLxsuUN7g7SIMdLVDz2KsQ1zFjsR0o2czwIJIGrYkD4uhqnUyZbannlJxBjj9qflsdmaWJ2+XcdW70/MYwM2AA28vvnUFsX0++dDZyaz9tRWhGabb/ewphVm2BO/0piG/WpBx2DEKvcjeRuCfSKz3s0amE0fGKm4lTzEyPQ0ELSpuCu0q5SAyXp6mKAjRRQZqpSWWWzOw2p3HsQFMPzP6CqwmnZrG1KoPIn607eBpDpUqVZmcldpq06gHrTqYKcDTKi4dS8OxE9ahIb1Y4RGnafvlWuCMm04fmTj4DoRqbDBfmSyfjjmWEau4Lc9y8c4GjIHwUVIUHSgEAgfhjcEc/Xmao/ZLNnCxlc/CDfnbn9DWq4xiHC/6mFOh5JW0I0ydJn4TII8/QdNnMv5ZS63GAw2CvDrpYHnYHefLzFjUjj2FhrD4TAgiSP5TzBpcZzYcyyAEyT0BN/Q/Q3tVVlcuHfTqOn+UXYnkoA5k86nK8aXJvlBUFjc1YDh8iYkdiQas8xwAgSpE8xuF6CRuaq/4h8MwR5Ty+5qJhJ/ZftvoF8kdhqJ32+vlQBhG/8Aj9KtMrnQbMZn4iblu29hfrRMzipzE/t85ouGNm4N1SaCPuKdirPit5USAzQointluhmsvU9oYrk0d1FNJHKp1oworlOIrlIypymmTTkUkgDc2HmaJQkqJoOYWIojMFNtpt5f7pmYeQKdvBI9KlSqDOSu1xKcKA5TprgpA0wIjVPy2KNufKq8UXCN6rG6qMptotBQiIM3YTY7bdDWi4Q4xdOG0WumrYEAwp7HUfI37HJ5bMGw3O81dcExR7xZn4ht516GFmU058prlE4zkidRiGBuO+1x+4/zWaw8RlfVMMCL8xXpvtHlwjkEeFvEhJ62ZZPe99ie9sNxfJCdaXHPqOxFZZY7m40wy+UX+JxAlybmZ/m+5NQMxhFtzN7+ZqwyOOzpsPAoHmR+I+h6VAx8zFrn78qWWrOVRDbDI50Fm5U/ExZ8qWGBvWF54i4YHIp7YxpuIKahi9TuzgztBpjLTneuR1ooNBrhpEUqk3Iq04XgiHY20r4m3K6rAL+Y3H051WTV4Cq5ZStizsxG5JXwrqPYgkCKAqcywLGBAFgN4AtE86A9Ppr0gZSpUqQOSu1xK7QCpUq6KA6pqThRFBiipsaqJqbkrnetL7JZZsTMKhbSJmY2jmO9qzOQF7b16T7JZfQjYrC4RiD5gj+9dnh4lrDyd6F4yi4uGyOL6daWtclXUeTg+smvN8yHAhjDLaeZA69bVvc1mteDb48Ni6c4VgA6X2EqWPmKwXFsyGeRN9+UH/c3q9axuzx7QstnSjknYyGHUULHP4osT8j0NMe8Ty6fr86flzMgiZj9ZG3Pe/nXLcrf4ttfQkUkjnNP92QfL1qYgVQZv/KO/fn+lDxHm4jvR66GwDhyKjmpmu1BC3mlYNmIsXNMY09jTGqKblcmnN0phpU3RU3MmFw1/LqPmxJ/SKBlcHWwWYHM9BzNSeKYZXEYRzkdlIBA9Bb0onWwjYeGW2FNx1ipOTeJoWdG1IItKlSpB6H/AMuez2WyWNgJlsP3avhszDU7SQ0A+MnlWAFKlQHRT6VKnCrjV1KVKnAsOGXcT93r1zJtGUeALoRty8f9hSpV3eL+n/XN5P7MPlnPuxc7keh3/QVlM/8AE3r9DA+lKlVeb+q8O0YG1GwLbUqVcmPbWkTc/fSnEfoaVKgyZB9aHFqVKgAuK4lKlWdM2uGlSqb0Sx4VufQ+t6LxoXB56U/SlSq/8B9Q1sLdq9E/4o9m8tnnzIzWF7z3a4RTxOsFter4GEzpG/SlSqDek/8A8v4V/wCV/wDdxv8A91ylSpB//9k='),
      // ),
      title: Text('Black Panther'),
      content: Text('Go to 5th'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ9E5HamQ9_mhx6T_wpAvXxDtGkbQKgBf3azyk3P06Gq2AtMErSbx4U2WLmj8i-5R_scA&usqp=CAU'),
      // ),
      title: Text('Black Widow'),
      content: Text('Go to 6th'),
    ),
    Step(
      // label: CircleAvatar(
      //   child: Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEUU8v-Hp07hYcxuOcwaweEzPxGERuzvyJaQr5W-9h30DAEIHX2ptIyICKFNEajIhRUVM&usqp=CAU'),
      // ),
      title: Text('Thor'),
      content: Text('Go to 7th'),
    ),
  ];

  var currentstep = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stepper App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Stepper(
          steps: Steps,
          currentStep: currentstep,
          onStepContinue: () {
            if (currentstep < Steps.length - 1) {
              setState(() {
                currentstep++;
              });
            }
          },
          onStepCancel: (){
            if(currentstep > 0){
              setState(() {
                currentstep--;
              });
            }
          },
        ),
    );
  }
}
