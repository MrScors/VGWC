<#macro page>
    <!DOCTYPE html>
    <html lang="en">
    <head>

        <title>VGWC</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
        <style>



            *{font-family: 'Roboto', sans-serif;}

            @keyframes click-wave {
                0% {
                    height: 40px;
                    width: 40px;
                    margin-left: -18px;
                    margin-top: -12px;
                    opacity: 0.35;
                    position: relative;
                }
                100% {
                    height: 200px;
                    width: 200px;
                    margin-left: -90px;
                    margin-top: -70px;
                    opacity: 0;
                }
            }

            .option-input {
                -webkit-appearance: none;
                -moz-appearance: none;
                -ms-appearance: none;
                -o-appearance: none;
                appearance: none;
                position: relative;
                top: 3px;
                right: 0;
                bottom: 0;
                left: 0;
                height: 15px;
                width: 15px;
                transition: all 0.15s ease-out 0s;
                background: #87acad;
                border: none;
                color: black;
                cursor: pointer;
                display: inline-block;
                margin-right: 0.5rem;
                outline: none;
                z-index: 1000;
                border-radius: 3px;
            }
            .option-input:hover {
                background: #53b7b6;
            }
            .option-input:checked {
                background: #f7ff16;
            }
            .option-input:checked::before {
                height: 15px;
                width: 15px;
                position: absolute;
                content: '✔';
                display: inline-block;
                font-size: 13px;
                text-align: center;
                line-height: 15px;
            }
            .option-input:checked::after {
                -webkit-animation: click-wave 0.65s;
                -moz-animation: click-wave 0.65s;
                animation: click-wave 0.65s;
                background: #f7ff16;
                content: '';
                display: block;
                position: relative;
                z-index: 100;
            }

            .myTable2 table {
                border-spacing: 0;
                empty-cells: hide;
            }
            .myTable2 td {
                padding: 15px 40px;
                text-align: center;
                border-bottom: 1px solid #F4EEE8;
                transition: all 0.5s linear;
            }
            .myTable2 td:first-child {
                text-align: left;
                color: #3D3511;
                font-weight: bold;
            }
            .myTable2 th {
                padding: 10px 20px;
                color: #3D3511;
                border-bottom: 1px solid #F4EEE8;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
            }
            .myTable2 td:nth-child(even) {
                background: #F6D27E;
            }
            .myTable2 td:nth-child(odd) {
                background: #D1C7BF;
            }
            .myTable2 th:nth-child(even)  {
                background: #F6D27E;
            }
            .myTable2 th:nth-child(odd)  {
                background: #D1C7BF;
            }

            .myTable table {
                border-collapse: collapse;
                color: #686461;
            }
            .myTable caption {
                color: white;
                background: #8FD4C1;
                font-size: 18px;
                text-align: left;
                font-weight: bold;
            }
            .myTable th {
                border-bottom: 3px solid #b7116a;
                text-align: left;
                background: #cfcdbf;
            }
            .myTable tr{
                background: #edd9db;
            }

            .myBigTable table {
                border-collapse: collapse;
                color: #686461;
            }
            .myBigTable caption {
                color: white;
                background: #8FD4C1;
                font-size: 18px;
                text-align: left;
                font-weight: bold;
            }
            .myBigTable th {
                border-bottom: 3px solid #b7116a;
                background: #cfcdbf;
                width:20vh;
                text-align: center;
                font-weight: 700;

            }
            .myBigTable tr{
                background: #edd9db;
                padding:20px;
                font-weight: 700;
                text-align: center;
                width:20vh;
            }


            .form {
                background: #7b7c7b;
                border-radius: 10px;
                margin-right: 30px;
            }

            a {
                color: deeppink;
            }

            a:hover {
                color: #b7116a;
                text-decoration: none;
            }

            .myButton:not(:hover) {
                transition: 1s;
                background-color: black;
                color: white;
                border-radius: 6px;
            }

            .myButton {
                background-color: black;
                color: deeppink;
                border-radius: 6px;
                font-size: 19px;
                min-width:12vh
            }

            .myBigButton {
                padding: 10px 20px 10px 20px;
            }

            .myUpload{
                opacity: 0;
                width: 80px;
            }

            .text-input {
                border-radius: 2px;
                border: 1px solid grey;
                width: 80px;
            }

            .hero{
                width:25vh;
                padding: 2vh;
                display: inline-block;
                background: rgba(0, 0, 0, 0.87);
                color: rgba(255, 20, 147, 0.85);
                border-radius: 2vh;
                font-weight: 700;
                font-size: 18px;
                min-width: 200px;
                margin: 10px 2vh 5px 5px;
            }


        </style>
    </head>
    <body style="background: #cfcdbf">
    <#include "navbar.ftl">
    <div class="mt-5 ml-5" style="min-height: 78vh; min-width: 90vh">
        <#nested>
    </div>
    <#include "footer.ftl">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    </body>
    </html>
</#macro>