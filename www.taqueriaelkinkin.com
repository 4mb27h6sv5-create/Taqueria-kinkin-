<!DOCTYPE html>
<html lang="es" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taquería El Kinkin - taqueriaelkinkin.com | Tacos, Tortas, Burritos y Gringas</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,700;0,800;0,900;1,800&family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        kinkin: {
                            yellow: '#FFC800',
                            gold: '#E5A900',
                            darkYellow: '#D49600',
                            bgDark: '#0E0E0E',
                            cardDark: '#171717',
                            borderDark: '#2A2A2A'
                        }
                    },
                    fontFamily: {
                        sans: ['Montserrat', 'sans-serif'],
                        body: ['Poppins', 'sans-serif']
                    }
                }
            }
        }
    </script>
    
    <style>
        /* Custom dark texture background */
        body {
            background-color: #0c0c0c;
            background-image: radial-gradient(circle at 50% 0%, #1c1917 0%, #0c0c0c 75%);
            color: #ffffff;
            font-family: 'Poppins', sans-serif;
        }

        .heading-font {
            font-family: 'Montserrat', sans-serif;
        }

        /* Yellow torn paper brush stroke effect */
        .brush-divider {
            background: linear-gradient(135deg, #FFC800 0%, #E5A900 100%);
            clip-path: polygon(0 15%, 100% 0%, 100% 85%, 0% 100%);
        }

        .brush-border-top {
            clip-path: polygon(0 8px, 5% 0px, 10% 10px, 15% 2px, 20% 12px, 25% 1px, 30% 9px, 35% 3px, 40% 11px, 45% 2px, 50% 10px, 55% 1px, 60% 8px, 65% 3px, 70% 12px, 75% 2px, 80% 9px, 85% 1px, 90% 11px, 95% 4px, 100% 10px, 100% 100%, 0 100%);
        }

        .brush-banner {
            background: #FFC800;
            position: relative;
        }
        
        .brush-banner::before {
            content: '';
            position: absolute;
            top: -12px;
            left: 0;
            right: 0;
            height: 14px;
            background: #FFC800;
            clip-path: polygon(0 100%, 3% 20%, 7% 80%, 12% 10%, 18% 90%, 24% 30%, 30% 85%, 36% 15%, 42% 75%, 48% 25%, 54% 90%, 60% 20%, 66% 80%, 72% 30%, 78% 85%, 84% 15%, 90% 90%, 95% 25%, 100% 100%);
        }

        .brush-banner::after {
            content: '';
            position: absolute;
            bottom: -12px;
            left: 0;
            right: 0;
            height: 14px;
            background: #FFC800;
            clip-path: polygon(0 0, 4% 80%, 9% 20%, 15% 90%, 21% 10%, 27% 75%, 33% 20%, 39% 85%, 45% 15%, 51% 80%, 57% 10%, 63% 90%, 69% 25%, 75% 85%, 81% 15%, 87% 75%, 93% 10%, 98% 80%, 100% 0);
        }

        /* Custom scrollbars */
        ::-webkit-scrollbar {
            width: 10px;
        }
        ::-webkit-scrollbar-track {
            background: #0E0E0E;
        }
        ::-webkit-scrollbar-thumb {
            background: #FFC800;
            border-radius: 5px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: #E5A900;
        }

        /* Glow effects */
        .yellow-glow {
            box-shadow: 0 0 25px rgba(255, 200, 0, 0.25);
        }

        .meat-card:hover {
            transform: translateY(-5px);
            border-color: #FFC800;
        }
    </style>
</head>
<body class="antialiased selection:bg-kinkin-yellow selection:text-black">

    <!-- Navigation Header -->
    <header class="sticky top-0 z-50 bg-black/95 backdrop-blur-md border-b border-zinc-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-20">
                <!-- Logo with Monkey Mascot -->
                <a href="#" class="flex items-center gap-3 group">
                    <div class="w-12 h-12 bg-kinkin-yellow rounded-full flex items-center justify-center border-2 border-black overflow-hidden shadow-lg group-hover:scale-105 transition-transform">
                        <!-- Custom SVG Monkey Icon -->
                        <svg viewBox="0 0 100 100" class="w-10 h-10 text-black fill-current">
                            <!-- Crown -->
                            <polygon points="30,25 40,35 50,20 60,35 70,25 65,40 35,40" fill="#000" />
                            <circle cx="30" cy="22" r="3" fill="#000"/>
                            <circle cx="50" cy="17" r="3.5" fill="#000"/>
                            <circle cx="70" cy="22" r="3" fill="#000"/>
                            <!-- Monkey Head Base -->
                            <ellipse cx="50" cy="62" rx="28" ry="24" fill="#000" />
                            <circle cx="22" cy="58" r="10" fill="#000" />
                            <circle cx="78" cy="58" r="10" fill="#000" />
                            <circle cx="22" cy="58" r="6" fill="#FFC800" />
                            <circle cx="78" cy="58" r="6" fill="#FFC800" />
                            <!-- Face Muzzle -->
                            <ellipse cx="50" cy="68" rx="18" ry="14" fill="#FFC800" />
                            <!-- Glasses -->
                            <rect x="30" y="48" width="17" height="12" rx="3" fill="#000" />
                            <rect x="53" y="48" width="17" height="12" rx="3" fill="#000" />
                            <line x1="47" y1="52" x2="53" y2="52" stroke="#000" stroke-width="3" />
                            <!-- Smile -->
                            <path d="M 40 70 Q 50 78 60 70" stroke="#000" stroke-width="3" fill="none" stroke-linecap="round" />
                        </svg>
                    </div>
                    <div class="flex flex-col">
                        <span class="heading-font font-black text-lg tracking-wider leading-none text-white">
                            TAQUERÍA <span class="text-kinkin-yellow block text-sm tracking-widest">EL KINKIN</span>
                        </span>
                        <span class="text-[10px] text-kinkin-yellow font-medium tracking-widest lowercase">taqueriaelkinkin.com</span>
                    </div>
                </a>

                <!-- Desktop Navigation Links -->
                <nav class="hidden md:flex items-center space-x-8 text-xs font-bold uppercase tracking-wider">
                    <a href="#inicio" class="text-kinkin-yellow border-b-2 border-kinkin-yellow pb-1">INICIO</a>
                    <a href="#menu" class="text-zinc-300 hover:text-kinkin-yellow transition-colors">MENÚ</a>
                    <a href="#carnes" class="text-zinc-300 hover:text-kinkin-yellow transition-colors">CARNES</a>
                    <a href="#ubicacion" class="text-zinc-300 hover:text-kinkin-yellow transition-colors">UBICACIÓN</a>
                    <a href="#pedidos" class="text-zinc-300 hover:text-kinkin-yellow transition-colors">PEDIDOS</a>
                </nav>

                <!-- Action Button -->
                <div class="flex items-center gap-3">
                    <button onclick="toggleCartDrawer()" class="relative bg-zinc-800 hover:bg-zinc-700 text-white p-2.5 rounded-full transition-colors flex items-center justify-center">
                        <i class="fa-solid fa-cart-shopping text-kinkin-yellow text-lg"></i>
                        <span id="cart-badge" class="absolute -top-1 -right-1 bg-kinkin-yellow text-black font-extrabold text-[10px] w-5 h-5 rounded-full flex items-center justify-center hidden">0</span>
                    </button>
                    <a href="https://wa.me/523531269365?text=Hola%20Taquer%C3%ADa%20El%20Kinkin,%20me%20gustar%C3%ADa%20hacer%20un%20pedido." target="_blank" class="hidden sm:flex items-center gap-2 bg-kinkin-yellow hover:bg-kinkin-gold text-black px-4 py-2 rounded-lg font-extrabold text-xs uppercase tracking-wider transition-all transform hover:scale-105 shadow-md">
                        <i class="fa-brands fa-whatsapp text-base"></i>
                        <span>Pedir Ya</span>
                    </a>
                    <!-- Mobile Hamburger -->
                    <button id="mobile-menu-btn" class="md:hidden text-white text-2xl p-1 focus:outline-none">
                        <i class="fa-solid fa-bars"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Mobile Menu Dropdown -->
        <div id="mobile-menu" class="hidden md:hidden bg-zinc-950 border-b border-zinc-800 px-4 pt-3 pb-6 space-y-3 font-semibold text-sm">
            <a href="#inicio" class="block text-kinkin-yellow py-1">INICIO</a>
            <a href="#menu" class="block text-zinc-300 hover:text-kinkin-yellow py-1">MENÚ</a>
            <a href="#carnes" class="block text-zinc-300 hover:text-kinkin-yellow py-1">CARNES</a>
            <a href="#ubicacion" class="block text-zinc-300 hover:text-kinkin-yellow py-1">UBICACIÓN</a>
            <a href="#pedidos" class="block text-zinc-300 hover:text-kinkin-yellow py-1">PEDIDOS</a>
            <a href="https://wa.me/523531269365" target="_blank" class="w-full mt-2 flex items-center justify-center gap-2 bg-kinkin-yellow text-black py-2.5 rounded-lg font-bold">
                <i class="fa-brands fa-whatsapp text-lg"></i> PEDIR POR WHATSAPP
            </a>
        </div>
    </header>

    <!-- HERO SECTION -->
    <section id="inicio" class="relative pt-8 pb-16 lg:py-20 overflow-hidden">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                
                <!-- Left Column Text Content -->
                <div class="lg:col-span-6 space-y-6 z-10 text-left">
                    <div class="inline-flex items-center gap-2 bg-zinc-900 border border-zinc-800 text-kinkin-yellow font-extrabold text-xs tracking-widest px-3.5 py-1.5 rounded-full uppercase">
                        <i class="fa-solid fa-globe"></i>
                        <span>taqueriaelkinkin.com</span>
                    </div>
                    
                    <h1 class="heading-font font-black text-4xl sm:text-5xl lg:text-6xl tracking-tight leading-tight uppercase text-white">
                        TACOS, TORTAS,<br>
                        BURRITOS Y<br>
                        <span class="text-kinkin-yellow">GRINGAS.</span>
                    </h1>
                    
                    <p class="text-zinc-300 text-sm sm:text-base max-w-lg font-normal leading-relaxed">
                        Sabor callejero, ingredientes de calidad y el toque que nos hace únicos. Disfruta de la mejor calidad y sazón directo a tu mesa.
                    </p>

                    <!-- WhatsApp Contact Badge Box matching image design -->
                    <div class="pt-2">
                        <a href="https://wa.me/523531269365?text=Hola!%20Quiero%20hacer%20un%20pedido%20en%20Taquer%C3%ADa%20El%20Kinkin" target="_blank" class="inline-flex flex-col sm:flex-row items-stretch sm:items-center bg-kinkin-yellow hover:bg-kinkin-gold text-black rounded-xl p-3 shadow-xl transform transition-transform hover:-translate-y-1 group">
                            <div class="flex items-center gap-3 px-3 py-1.5 bg-black text-white rounded-lg font-extrabold">
                                <i class="fa-brands fa-whatsapp text-2xl text-kinkin-yellow group-hover:scale-110 transition-transform"></i>
                                <div class="text-left">
                                    <span class="block text-[9px] text-zinc-400 tracking-wider uppercase">Pedidos al WhatsApp</span>
                                    <span class="text-base sm:text-lg tracking-wider text-kinkin-yellow font-black">3531269365</span>
                                </div>
                            </div>
                            <div class="px-4 py-2 text-center sm:text-left">
                                <span class="block text-xs font-bold text-black uppercase tracking-tight">Tacos bien hechos,</span>
                                <span class="block text-xs font-black text-zinc-900 uppercase">clientes felices.</span>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Right Column Image Grid / Mascot showcase matching exact layout -->
                <div class="lg:col-span-6 relative">
                    <!-- Glow Behind image -->
                    <div class="absolute -top-10 -right-10 w-72 h-72 bg-kinkin-yellow/10 rounded-full blur-3xl pointer-events-none"></div>

                    <!-- Main Composition Frame -->
                    <div class="relative z-10 space-y-4">
                        
                        <!-- Top Monkey Mascot Illustration Banner -->
                        <div class="relative bg-gradient-to-r from-zinc-900 via-zinc-800 to-zinc-900 border-2 border-kinkin-yellow/40 rounded-2xl p-6 shadow-2xl flex items-center justify-between overflow-hidden">
                            <div class="space-y-1">
                                <span class="text-xs text-kinkin-yellow font-extrabold uppercase tracking-widest">El Rey del Sabor</span>
                                <h3 class="heading-font font-extrabold text-xl sm:text-2xl text-white">¡CON EL TOQUE KINKIN!</h3>
                                <p class="text-xs text-zinc-400">Preparados al alambre y al carbón con la mejor carne.</p>
                            </div>
                            <!-- King Monkey SVG Avatar Large -->
                            <div class="w-24 h-24 sm:w-28 sm:h-28 bg-kinkin-yellow rounded-full border-4 border-black flex items-center justify-center flex-shrink-0 shadow-lg relative translate-x-3">
                                <svg viewBox="0 0 100 100" class="w-20 h-20 text-black fill-current">
                                    <!-- Crown -->
                                    <polygon points="30,22 40,32 50,16 60,32 70,22 65,38 35,38" fill="#000" />
                                    <circle cx="30" cy="19" r="3" fill="#000"/>
                                    <circle cx="50" cy="13" r="3.5" fill="#000"/>
                                    <circle cx="70" cy="19" r="3" fill="#000"/>
                                    <!-- Head -->
                                    <ellipse cx="50" cy="58" rx="28" ry="24" fill="#000" />
                                    <circle cx="22" cy="54" r="10" fill="#000" />
                                    <circle cx="78" cy="54" r="10" fill="#000" />
                                    <circle cx="22" cy="54" r="6" fill="#FFC800" />
                                    <circle cx="78" cy="54" r="6" fill="#FFC800" />
                                    <ellipse cx="50" cy="64" rx="18" ry="14" fill="#FFC800" />
                                    <!-- Sunglasses -->
                                    <rect x="30" y="44" width="17" height="12" rx="3" fill="#000" />
                                    <rect x="53" y="44" width="17" height="12" rx="3" fill="#000" />
                                    <line x1="47" y1="48" x2="53" y2="48" stroke="#000" stroke-width="3" />
                                    <!-- Smile & Taco -->
                                    <path d="M 40 67 Q 50 75 60 67" stroke="#000" stroke-width="3" fill="none" stroke-linecap="round" />
                                    <!-- Hand with Taco -->
                                    <path d="M 68 70 Q 82 60 78 80 Z" fill="#FFC800" stroke="#000" stroke-width="2"/>
                                </svg>
                            </div>
                        </div>

                        <!-- Food Showcase Grid matching image layout -->
                        <div class="grid grid-cols-2 gap-3 sm:gap-4">
                            <!-- Food Card 1: Tacos -->
                            <div class="group relative rounded-xl overflow-hidden border border-zinc-800 bg-zinc-900 shadow-md">
                                <img src="https://images.unsplash.com/photo-1565299585323-38d6b0865b47?auto=format&fit=crop&w=600&q=80" alt="Tacos El Kinkin" class="w-full h-36 sm:h-44 object-cover group-hover:scale-110 transition-transform duration-500">
                                <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/20 to-transparent flex flex-col justify-end p-3">
                                    <span class="text-kinkin-yellow font-black text-xs uppercase tracking-wider">Tacos con Todo</span>
                                    <span class="text-white text-xs font-semibold">Salsa, Cebollita & Limón</span>
                                </div>
                            </div>
                            <!-- Food Card 2: Burritos & Gringas -->
                            <div class="group relative rounded-xl overflow-hidden border border-zinc-800 bg-zinc-900 shadow-md">
                                <img src="https://images.unsplash.com/photo-1626700051175-6818013e1d4f?auto=format&fit=crop&w=600&q=80" alt="Burritos y Gringas" class="w-full h-36 sm:h-44 object-cover group-hover:scale-110 transition-transform duration-500">
                                <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/20 to-transparent flex flex-col justify-end p-3">
                                    <span class="text-kinkin-yellow font-black text-xs uppercase tracking-wider">Burrito & Tortas</span>
                                    <span class="text-white text-xs font-semibold">Con Queso Fundido & Zanahorias</span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Yellow Separator Strip -->
    <div class="h-3 bg-kinkin-yellow w-full my-4 shadow-lg"></div>

    <!-- SECTION: NUESTRO MENÚ - HECHOS AL MOMENTO PARA TI -->
    <section id="menu" class="py-16 bg-zinc-950/80 border-b border-zinc-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                
                <!-- Left text content matching second section in user design -->
                <div class="lg:col-span-5 space-y-5">
                    <span class="text-kinkin-yellow font-black text-xs tracking-widest uppercase">NUESTRO MENÚ</span>
                    <h2 class="heading-font font-black text-3xl sm:text-4xl text-white leading-tight uppercase">
                        HECHOS AL MOMENTO,<br>
                        <span class="text-kinkin-yellow">PARA TI.</span>
                    </h2>
                    <p class="text-zinc-400 text-sm leading-relaxed">
                        Desde el clásico taco hasta nuestras tortas especiales y gringas con queso abundante, cada platillo está hecho con pasión y los mejores ingredientes del día.
                    </p>

                    <div class="pt-2">
                        <button onclick="scrollToFullMenu()" class="bg-kinkin-yellow hover:bg-kinkin-gold text-black font-extrabold text-xs px-6 py-3.5 rounded-lg uppercase tracking-wider transition-all transform hover:scale-105 shadow-md flex items-center gap-2">
                            <span>VER MENÚ COMPLETO</span>
                            <i class="fa-solid fa-arrow-down"></i>
                        </button>
                    </div>
                </div>

                <!-- Right dish presentation photos matching user screenshot layout -->
                <div class="lg:col-span-7 grid grid-cols-1 sm:grid-cols-2 gap-4">
                    <!-- Dish 1 -->
                    <div class="bg-zinc-900 rounded-2xl p-3 border border-zinc-800 shadow-xl group hover:border-kinkin-yellow/50 transition-colors">
                        <div class="overflow-hidden rounded-xl h-48 bg-zinc-800 relative">
                            <img src="https://images.unsplash.com/photo-1509722747041-616f39b57569?auto=format&fit=crop&w=600&q=80" alt="Torta Kinkin con Zanahorias" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300">
                            <span class="absolute top-2 right-2 bg-black/80 text-kinkin-yellow font-bold text-xs px-2.5 py-1 rounded-full border border-kinkin-yellow/40">$75 MXN</span>
                        </div>
                        <div class="p-3">
                            <h4 class="heading-font font-extrabold text-white text-base">Tortas Kinkin Especiales</h4>
                            <p class="text-xs text-zinc-400 mt-1">Servidas en pan caliente con queso, verdura fresca, salsa de la casa y zanahorias en vinagre.</p>
                            <button onclick="quickAddToCart('Torta Especial Kinkin', 75)" class="w-full mt-3 bg-zinc-800 hover:bg-kinkin-yellow hover:text-black text-white text-xs font-bold py-2 rounded-lg transition-colors flex items-center justify-center gap-2">
                                <i class="fa-solid fa-plus"></i> Agregar al Pedido
                            </button>
                        </div>
                    </div>

                    <!-- Dish 2 -->
                    <div class="bg-zinc-900 rounded-2xl p-3 border border-zinc-800 shadow-xl group hover:border-kinkin-yellow/50 transition-colors">
                        <div class="overflow-hidden rounded-xl h-48 bg-zinc-800 relative">
                            <img src="https://images.unsplash.com/photo-1626700051175-6818013e1d4f?auto=format&fit=crop&w=600&q=80" alt="Burrito Partido a la Mitad" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300">
                            <span class="absolute top-2 right-2 bg-black/80 text-kinkin-yellow font-bold text-xs px-2.5 py-1 rounded-full border border-kinkin-yellow/40">$75 MXN</span>
                        </div>
                        <div class="p-3">
                            <h4 class="heading-font font-extrabold text-white text-base">Burrito Gigante Kinkin</h4>
                            <p class="text-xs text-zinc-400 mt-1">Carne a elegir con queso fundido gratinado, preparado y partido a la mitad.</p>
                            <button onclick="quickAddToCart('Burrito Gigante', 75)" class="w-full mt-3 bg-zinc-800 hover:bg-kinkin-yellow hover:text-black text-white text-xs font-bold py-2 rounded-lg transition-colors flex items-center justify-center gap-2">
                                <i class="fa-solid fa-plus"></i> Agregar al Pedido
                            </button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- SECTION: NUESTRAS CARNES - ELIGE TU FAVORITA -->
    <section id="carnes" class="py-16 bg-black relative">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            
            <span class="text-kinkin-yellow font-black text-xs tracking-widest uppercase block mb-1">NUESTRAS CARNES</span>
            <h2 class="heading-font font-black text-3xl sm:text-4xl text-white uppercase mb-2">
                ELIGE TU <span class="text-kinkin-yellow">FAVORITA.</span>
            </h2>
            <p class="text-zinc-400 text-xs sm:text-sm max-w-xl mx-auto mb-10">
                Carnes seleccionadas y preparadas con el sazón único y secreto al estilo Taquería El Kinkin.
            </p>

            <!-- Meat Type Circular Buttons matching EXACT icons from screenshot -->
            <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-5 gap-6 max-w-4xl mx-auto">
                
                <!-- Res -->
                <button onclick="filterByMeat('Res')" class="meat-card flex flex-col items-center p-5 bg-zinc-900 rounded-2xl border border-zinc-800 transition-all cursor-pointer group">
                    <div class="w-20 h-20 rounded-full border-2 border-kinkin-yellow/60 flex items-center justify-center bg-zinc-950 group-hover:border-kinkin-yellow group-hover:bg-kinkin-yellow/10 transition-all mb-3">
                        <i class="fa-solid fa-cow text-3xl text-kinkin-yellow"></i>
                    </div>
                    <span class="font-extrabold text-sm tracking-wider uppercase text-white group-hover:text-kinkin-yellow">RES</span>
                    <span class="text-[10px] text-zinc-400 mt-1">Suave & Jugosa</span>
                </button>

                <!-- Pastor -->
                <button onclick="filterByMeat('Pastor')" class="meat-card flex flex-col items-center p-5 bg-zinc-900 rounded-2xl border border-zinc-800 transition-all cursor-pointer group">
                    <div class="w-20 h-20 rounded-full border-2 border-kinkin-yellow/60 flex items-center justify-center bg-zinc-950 group-hover:border-kinkin-yellow group-hover:bg-kinkin-yellow/10 transition-all mb-3">
                        <i class="fa-solid fa-piggy-bank text-3xl text-kinkin-yellow"></i>
                    </div>
                    <span class="font-extrabold text-sm tracking-wider uppercase text-white group-hover:text-kinkin-yellow">PASTOR</span>
                    <span class="text-[10px] text-zinc-400 mt-1">Adobado Tradicional</span>
                </button>

                <!-- Longaniza -->
                <button onclick="filterByMeat('Longaniza')" class="meat-card flex flex-col items-center p-5 bg-zinc-900 rounded-2xl border border-zinc-800 transition-all cursor-pointer group">
                    <div class="w-20 h-20 rounded-full border-2 border-kinkin-yellow/60 flex items-center justify-center bg-zinc-950 group-hover:border-kinkin-yellow group-hover:bg-kinkin-yellow/10 transition-all mb-3">
                        <i class="fa-solid fa-drumstick-bite text-3xl text-kinkin-yellow"></i>
                    </div>
                    <span class="font-extrabold text-sm tracking-wider uppercase text-white group-hover:text-kinkin-yellow">LONGANIZA</span>
                    <span class="text-[10px] text-zinc-400 mt-1">Bien Doradita</span>
                </button>

                <!-- Picaña -->
                <button onclick="filterByMeat('Picaña')" class="meat-card flex flex-col items-center p-5 bg-zinc-900 rounded-2xl border border-zinc-800 transition-all cursor-pointer group">
                    <div class="w-20 h-20 rounded-full border-2 border-kinkin-yellow/60 flex items-center justify-center bg-zinc-950 group-hover:border-kinkin-yellow group-hover:bg-kinkin-yellow/10 transition-all mb-3">
                        <i class="fa-solid fa-utensils text-3xl text-kinkin-yellow"></i>
                    </div>
                    <span class="font-extrabold text-sm tracking-wider uppercase text-white group-hover:text-kinkin-yellow">PICAÑA</span>
                    <span class="text-[10px] text-zinc-400 mt-1">Corte Premium</span>
                </button>

                <!-- Arrachera -->
                <button onclick="filterByMeat('Arrachera')" class="meat-card flex flex-col items-center p-5 bg-zinc-900 rounded-2xl border border-zinc-800 transition-all cursor-pointer group col-span-2 sm:col-span-1">
                    <div class="w-20 h-20 rounded-full border-2 border-kinkin-yellow/60 flex items-center justify-center bg-zinc-950 group-hover:border-kinkin-yellow group-hover:bg-kinkin-yellow/10 transition-all mb-3">
                        <i class="fa-solid fa-fire-burner text-3xl text-kinkin-yellow"></i>
                    </div>
                    <span class="font-extrabold text-sm tracking-wider uppercase text-white group-hover:text-kinkin-yellow">ARRACHERA</span>
                    <span class="text-[10px] text-zinc-400 mt-1">Marinada al Carbón</span>
                </button>

            </div>

            <!-- Toast / Filter Message Box -->
            <div id="meat-toast" class="mt-6 text-xs text-kinkin-yellow font-semibold tracking-wide h-6"></div>

        </div>
    </section>

    <!-- INTERACTIVE FULL MENU CATALOG SECTION -->
    <section id="full-menu" class="py-16 bg-zinc-950 border-t border-zinc-900">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            
            <div class="flex flex-col md:flex-row md:items-end justify-between mb-8 gap-4">
                <div>
                    <span class="text-kinkin-yellow font-black text-xs tracking-widest uppercase">CATÁLOGO INTERACTIVO</span>
                    <h2 class="heading-font font-black text-3xl text-white uppercase">MENÚ COMPLETO Y PRECIOS</h2>
                </div>

                <!-- Menu Categories Filter Tabs -->
                <div class="flex flex-wrap gap-2" id="category-tabs">
                    <button onclick="filterCategory('todos')" class="cat-tab bg-kinkin-yellow text-black font-extrabold text-xs px-4 py-2 rounded-lg transition-colors">TODOS</button>
                    <button onclick="filterCategory('tacos')" class="cat-tab bg-zinc-900 hover:bg-zinc-800 text-white font-bold text-xs px-4 py-2 rounded-lg transition-colors border border-zinc-800">TACOS</button>
                    <button onclick="filterCategory('tortas')" class="cat-tab bg-zinc-900 hover:bg-zinc-800 text-white font-bold text-xs px-4 py-2 rounded-lg transition-colors border border-zinc-800">TORTAS</button>
                    <button onclick="filterCategory('burritos')" class="cat-tab bg-zinc-900 hover:bg-zinc-800 text-white font-bold text-xs px-4 py-2 rounded-lg transition-colors border border-zinc-800">BURRITOS</button>
                    <button onclick="filterCategory('gringas')" class="cat-tab bg-zinc-900 hover:bg-zinc-800 text-white font-bold text-xs px-4 py-2 rounded-lg transition-colors border border-zinc-800">GRINGAS</button>
                    <button onclick="filterCategory('bebidas')" class="cat-tab bg-zinc-900 hover:bg-zinc-800 text-white font-bold text-xs px-4 py-2 rounded-lg transition-colors border border-zinc-800">BEBIDAS</button>
                </div>
            </div>

            <!-- Menu Items Grid -->
            <div id="menu-grid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- JS populated menu items -->
            </div>

        </div>
    </section>

    <!-- SECTION: VISÍTANOS - ESTAMOS EN TU COLONIA -->
    <section id="ubicacion" class="py-16 bg-zinc-900/60 border-t border-b border-zinc-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-center">
                
                <!-- Left Details matching image -->
                <div class="lg:col-span-5 space-y-5">
                    <span class="text-kinkin-yellow font-black text-xs tracking-widest uppercase">VISÍTANOS</span>
                    <h2 class="heading-font font-black text-3xl sm:text-4xl text-white uppercase leading-tight">
                        ESTAMOS EN<br>
                        <span class="text-kinkin-yellow">TU COLONIA.</span>
                    </h2>

                    <div class="flex items-start gap-4 p-4 bg-black/60 rounded-xl border border-zinc-800">
                        <div class="w-10 h-10 rounded-full bg-kinkin-yellow flex items-center justify-center text-black shrink-0 mt-1">
                            <i class="fa-solid fa-location-dot text-xl"></i>
                        </div>
                        <div class="space-y-1">
                            <h4 class="font-extrabold text-white text-sm">Infonavit Morelos</h4>
                            <p class="text-xs text-zinc-300">Rumbo a La Lobera, Los Reyes, Michoacán, México</p>
                            <span class="inline-block text-[10px] text-kinkin-yellow font-semibold mt-1">Ref: Camino hacia La Lobera</span>
                        </div>
                    </div>

                    <p class="text-xs text-zinc-400">
                        Ven y disfruta el mejor sabor en un ambiente 100% familiar o solicita servicio a domicilio rápido y eficiente.
                    </p>

                    <div class="pt-2 flex flex-wrap gap-3">
                        <a href="https://maps.google.com/?q=Infonavit+Morelos+rumbo+a+La+Lobera+Los+Reyes+Michoacan" target="_blank" class="bg-zinc-800 hover:bg-zinc-700 text-white px-5 py-2.5 rounded-lg text-xs font-bold flex items-center gap-2 border border-zinc-700">
                            <i class="fa-solid fa-map-location-dot text-kinkin-yellow"></i>
                            <span>Cómo Llegar (Google Maps)</span>
                        </a>
                    </div>
                </div>

                <!-- Right Mock Map Graphics with custom marker matching layout -->
                <div class="lg:col-span-7">
                    <div class="relative bg-zinc-950 rounded-2xl overflow-hidden border-2 border-zinc-800 shadow-2xl h-80 sm:h-96 flex flex-col justify-between p-6">
                        <!-- Dark Map Graphic Background Overlay -->
                        <div class="absolute inset-0 opacity-40 bg-[radial-gradient(#333_1px,transparent_1px)] [background-size:16px_16px]"></div>
                        
                        <!-- Map Grid Lines Mockup -->
                        <svg class="absolute inset-0 w-full h-full stroke-zinc-800 opacity-60" width="100%" height="100%">
                            <line x1="10%" y1="0" x2="10%" y2="100%" stroke-width="3"/>
                            <line x1="40%" y1="0" x2="40%" y2="100%" stroke-width="5"/>
                            <line x1="75%" y1="0" x2="75%" y2="100%" stroke-width="3"/>
                            <line x1="0" y1="30%" x2="100%" y2="30%" stroke-width="4"/>
                            <line x1="0" y1="70%" x2="100%" y2="70%" stroke-width="3"/>
                        </svg>

                        <!-- Map labels -->
                        <div class="relative z-10 flex justify-between text-[11px] font-bold text-zinc-500 uppercase">
                            <span>Infonavit Morelos</span>
                            <span>Rumbo a La Lobera</span>
                        </div>

                        <!-- Map Pin Center Marker -->
                        <div class="relative z-20 self-center flex flex-col items-center">
                            <div class="bg-kinkin-yellow text-black font-extrabold text-xs px-3 py-1.5 rounded-lg shadow-xl border border-black flex items-center gap-1.5 animate-bounce">
                                <i class="fa-solid fa-utensils"></i>
                                <span>Taquería El Kinkin</span>
                            </div>
                            <div class="w-4 h-4 bg-kinkin-yellow rotate-45 -mt-2 border-r border-b border-black"></div>
                            <div class="w-8 h-2 bg-black/60 rounded-full blur-sm mt-1"></div>
                        </div>

                        <div class="relative z-10 flex justify-between text-[11px] font-bold text-zinc-500 uppercase">
                            <span>Los Reyes, Mich.</span>
                            <span>Acceso Principal</span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- GIANT WHATSAPP CALL TO ACTION BANNER (Exact style from bottom of image) -->
    <section id="pedidos" class="brush-banner py-12 text-black overflow-hidden relative">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-col lg:flex-row items-center justify-between gap-8 relative z-10">
                
                <!-- Text Left -->
                <div class="text-center lg:text-left space-y-1">
                    <span class="font-extrabold text-xs sm:text-sm tracking-widest uppercase text-black/80">PIDE POR WHATSAPP</span>
                    <h2 class="heading-font font-black text-3xl sm:text-5xl uppercase tracking-tight leading-none text-black">
                        RÁPIDO, FÁCIL Y <span class="underline decoration-black">DELICIOSO.</span>
                    </h2>
                </div>

                <!-- WhatsApp Giant Phone Button -->
                <a href="https://wa.me/523531269365?text=Hola%20Taquer%C3%ADa%20El%20Kinkin!%20Deseo%20hacer%20un%20pedido" target="_blank" class="flex items-center gap-4 bg-black hover:bg-zinc-900 text-white px-6 py-4 rounded-2xl shadow-2xl transform transition-transform hover:scale-105 group">
                    <div class="w-14 h-14 bg-emerald-500 rounded-full flex items-center justify-center text-white text-3xl group-hover:scale-110 transition-transform">
                        <i class="fa-brands fa-whatsapp"></i>
                    </div>
                    <div class="text-left">
                        <span class="heading-font font-black text-2xl sm:text-4xl tracking-wider text-kinkin-yellow block">3531269365</span>
                        <span class="text-xs text-zinc-300 font-bold uppercase tracking-widest">Tacos bien hechos, clientes felices.</span>
                    </div>
                </a>

            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="bg-black pt-16 pb-12 border-t border-zinc-900 text-zinc-400 text-xs">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-col md:flex-row items-center justify-between gap-6 pb-8 border-b border-zinc-900">
                
                <!-- Logo -->
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 bg-kinkin-yellow rounded-full flex items-center justify-center text-black font-black text-lg">
                        <i class="fa-solid fa-crown"></i>
                    </div>
                    <div>
                        <span class="font-extrabold text-white text-base tracking-wider block">TAQUERÍA EL KINKIN</span>
                        <a href="https://taqueriaelkinkin.com" class="text-[11px] text-kinkin-yellow font-bold hover:underline block">www.taqueriaelkinkin.com</a>
                        <span class="text-[10px] text-zinc-500">Los Reyes, Michoacán</span>
                    </div>
                </div>

                <!-- Footer Nav -->
                <div class="flex flex-wrap justify-center gap-6 font-bold uppercase text-[11px] tracking-wider">
                    <a href="#inicio" class="hover:text-kinkin-yellow transition-colors">INICIO</a>
                    <a href="#menu" class="hover:text-kinkin-yellow transition-colors">MENÚ</a>
                    <a href="#carnes" class="hover:text-kinkin-yellow transition-colors">CARNES</a>
                    <a href="#ubicacion" class="hover:text-kinkin-yellow transition-colors">UBICACIÓN</a>
                    <a href="#pedidos" class="hover:text-kinkin-yellow transition-colors">PEDIDOS</a>
                </div>

                <!-- Social Icons -->
                <div class="flex items-center gap-4 text-lg">
                    <a href="#" class="w-9 h-9 bg-zinc-900 hover:bg-kinkin-yellow hover:text-black rounded-full flex items-center justify-center transition-colors">
                        <i class="fa-brands fa-instagram"></i>
                    </a>
                    <a href="#" class="w-9 h-9 bg-zinc-900 hover:bg-kinkin-yellow hover:text-black rounded-full flex items-center justify-center transition-colors">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>
                </div>

            </div>

            <div class="pt-8 text-center text-zinc-600 text-[11px]">
                © 2025 Taquería El Kinkin (taqueriaelkinkin.com). Todos los derechos reservados. Sabor 100% Mexicano.
            </div>
        </div>
    </footer>

    <!-- SHOPPING CART SLIDE-OUT DRAWER -->
    <div id="cart-drawer" class="fixed inset-0 z-50 overflow-hidden hidden">
        <div class="absolute inset-0 bg-black/80 backdrop-blur-sm transition-opacity" onclick="toggleCartDrawer()"></div>
        <div class="fixed inset-y-0 right-0 max-w-full flex pl-10">
            <div class="w-screen max-w-md bg-zinc-900 border-l border-zinc-800 text-white flex flex-col justify-between shadow-2xl">
                
                <!-- Drawer Header -->
                <div class="p-6 bg-black border-b border-zinc-800 flex items-center justify-between">
                    <div class="flex items-center gap-3">
                        <i class="fa-solid fa-bag-shopping text-kinkin-yellow text-xl"></i>
                        <h3 class="heading-font font-black text-lg uppercase text-white">Tu Pedido Kinkin</h3>
                    </div>
                    <button onclick="toggleCartDrawer()" class="text-zinc-400 hover:text-white text-xl">
                        <i class="fa-solid fa-xmark"></i>
                    </button>
                </div>

                <!-- Drawer Cart Items list -->
                <div id="cart-items-container" class="p-6 flex-1 overflow-y-auto space-y-4">
                    <!-- Populated dynamically -->
                </div>

                <!-- Drawer Footer & Send to WhatsApp Button -->
                <div class="p-6 bg-black border-t border-zinc-800 space-y-4">
                    <div class="flex justify-between items-center text-sm">
                        <span class="text-zinc-400 uppercase font-semibold">Total Est.</span>
                        <span id="cart-total-price" class="heading-font font-black text-2xl text-kinkin-yellow">$0.00 MXN</span>
                    </div>

                    <button onclick="sendOrderToWhatsApp()" class="w-full bg-emerald-500 hover:bg-emerald-600 text-white font-extrabold py-3.5 rounded-xl uppercase tracking-wider flex items-center justify-center gap-2 transition-all shadow-lg">
                        <i class="fa-brands fa-whatsapp text-xl"></i>
                        <span>ENVIAR PEDIDO A WHATSAPP</span>
                    </button>
                </div>

            </div>
        </div>
    </div>

    <script>
        // Menu Data Catalog
        const menuItems = [
            { id: 1, name: 'Taco de Pastor', category: 'tacos', meat: 'Pastor', price: 15, desc: 'Carne adobada al pastor con piña, cebollita y salsa especial.', img: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?auto=format&fit=crop&w=500&q=80' },
            { id: 2, name: 'Taco de Res / Asada', category: 'tacos', meat: 'Res', price: 15, desc: 'Fina carne de res asada al momento con salsita y limón.', img: 'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?auto=format&fit=crop&w=500&q=80' },
            { id: 3, name: 'Taco de Longaniza', category: 'tacos', meat: 'Longaniza', price: 15, desc: 'Longaniza bien doradita al comal con cebolla picada y cilantro.', img: 'https://images.unsplash.com/photo-1615870216519-2f9fa575fa5c?auto=format&fit=crop&w=500&q=80' },
            { id: 4, name: 'Taco de Arrachera', category: 'tacos', meat: 'Arrachera', price: 15, desc: 'Arrachera marinada al carbón, suave y jugosa.', img: 'https://images.unsplash.com/photo-1599974579688-8dbdd335c77f?auto=format&fit=crop&w=500&q=80' },
            { id: 5, name: 'Taco de Picaña', category: 'tacos', meat: 'Picaña', price: 15, desc: 'Corte premium de picaña a la plancha.', img: 'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=500&q=80' },
            { id: 6, name: 'Torta Especial Kinkin', category: 'tortas', meat: 'Res', price: 75, desc: 'Bolillo dorado con carne a elegir, queso fundido, cebollita y guarnición de zanahorias en vinagre.', img: 'https://images.unsplash.com/photo-1509722747041-616f39b57569?auto=format&fit=crop&w=500&q=80' },
            { id: 7, name: 'Torta Combinada Pastor/Longaniza', category: 'tortas', meat: 'Pastor', price: 75, desc: 'Mezcla de pastor y longaniza gratinada con queso Oaxaca y salsas.', img: 'https://images.unsplash.com/photo-1550547660-d9450f859349?auto=format&fit=crop&w=500&q=80' },
            { id: 8, name: 'Burrito Gigante Kinkin', category: 'burritos', meat: 'Res', price: 75, desc: 'Tortilla de harina rellena de carne, bastante queso derretido, partido a la mitad con guarnición.', img: 'https://images.unsplash.com/photo-1626700051175-6818013e1d4f?auto=format&fit=crop&w=500&q=80' },
            { id: 9, name: 'Gringa de Pastor con Queso', category: 'gringas', meat: 'Pastor', price: 85, desc: 'Tortillas de harina a la plancha dobladas con queso fundido, pastor y rodajas de pepino con zanahoria.', img: 'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?auto=format&fit=crop&w=500&q=80' },
            { id: 10, name: 'Gringa de Arrachera', category: 'gringas', meat: 'Arrachera', price: 85, desc: 'Arrachera marinada con queso derretido gratinado al comal.', img: 'https://images.unsplash.com/photo-1599974579688-8dbdd335c77f?auto=format&fit=crop&w=500&q=80' },
            { id: 11, name: 'Coca-Cola / Refresco 600ml', category: 'bebidas', meat: 'N/A', price: 25, desc: 'Refresco frío de 600ml (Coca-Cola, Sprite, Fanta, Mundet).', img: 'https://images.unsplash.com/photo-1622483767028-3f66f32aef97?auto=format&fit=crop&w=500&q=80' }
        ];

        let cart = [];

        // Render Menu Items
        function renderMenu(itemsToRender = menuItems) {
            const container = document.getElementById('menu-grid');
            if(!container) return;

            container.innerHTML = itemsToRender.map(item => `
                <div class="bg-zinc-900 rounded-xl overflow-hidden border border-zinc-800 shadow-md hover:border-kinkin-yellow/60 transition-all flex flex-col justify-between">
                    <div>
                        <div class="h-44 bg-zinc-800 overflow-hidden relative">
                            <img src="${item.img}" alt="${item.name}" class="w-full h-full object-cover hover:scale-105 transition-transform duration-300">
                            <span class="absolute top-3 right-3 bg-black/90 text-kinkin-yellow font-black text-xs px-3 py-1 rounded-full border border-kinkin-yellow/30">
                                $${item.price} MXN
                            </span>
                            <span class="absolute bottom-3 left-3 bg-zinc-900/90 text-zinc-300 font-bold text-[10px] uppercase px-2 py-0.5 rounded border border-zinc-700">
                                ${item.meat !== 'N/A' ? item.meat : item.category}
                            </span>
                        </div>
                        <div class="p-4 space-y-2">
                            <h4 class="heading-font font-black text-white text-base">${item.name}</h4>
                            <p class="text-xs text-zinc-400 line-clamp-2">${item.desc}</p>
                        </div>
                    </div>
                    <div class="p-4 pt-0">
                        <button onclick="addToCart(${item.id})" class="w-full bg-zinc-800 hover:bg-kinkin-yellow hover:text-black text-white font-extrabold text-xs py-2.5 rounded-lg transition-colors flex items-center justify-center gap-2">
                            <i class="fa-solid fa-cart-plus"></i> AGREGAR AL PEDIDO
                        </button>
                    </div>
                </div>
            `).join('');
        }

        // Category Filter
        function filterCategory(cat) {
            // Update Tab UI
            const tabs = document.querySelectorAll('.cat-tab');
            tabs.forEach(tab => {
                tab.classList.remove('bg-kinkin-yellow', 'text-black');
                tab.classList.add('bg-zinc-900', 'text-white');
            });

            event.target.classList.remove('bg-zinc-900', 'text-white');
            event.target.classList.add('bg-kinkin-yellow', 'text-black');

            if(cat === 'todos') {
                renderMenu(menuItems);
            } else {
                renderMenu(menuItems.filter(i => i.category === cat));
            }
        }

        // Meat Filter from Meat Badges
        function filterByMeat(meatName) {
            const toast = document.getElementById('meat-toast');
            toast.innerText = `Mostrando platillos con carne: ${meatName.toUpperCase()}`;
            
            const filtered = menuItems.filter(i => i.meat.toLowerCase() === meatName.toLowerCase());
            renderMenu(filtered);

            // Scroll to menu grid smooth
            document.getElementById('full-menu').scrollIntoView({ behavior: 'smooth' });
        }

        // Quick add by name
        function quickAddToCart(name, price) {
            const existing = cart.find(i => i.name === name);
            if(existing) {
                existing.qty++;
            } else {
                cart.push({ id: Date.now(), name: name, price: price, qty: 1 });
            }
            updateCartUI();
            toggleCartDrawer(true);
        }

        // Add to Cart from menu items
        function addToCart(itemId) {
            const item = menuItems.find(i => i.id === itemId);
            if(!item) return;

            const existing = cart.find(i => i.id === itemId);
            if(existing) {
                existing.qty++;
            } else {
                cart.push({ ...item, qty: 1 });
            }

            updateCartUI();
            toggleCartDrawer(true);
        }

        // Change quantity
        function changeQty(index, delta) {
            cart[index].qty += delta;
            if(cart[index].qty <= 0) {
                cart.splice(index, 1);
            }
            updateCartUI();
        }

        // Update Cart Drawer UI & Badge
        function updateCartUI() {
            const container = document.getElementById('cart-items-container');
            const badge = document.getElementById('cart-badge');
            const totalPriceEl = document.getElementById('cart-total-price');

            const totalQty = cart.reduce((sum, item) => sum + item.qty, 0);
            const totalPrice = cart.reduce((sum, item) => sum + (item.price * item.qty), 0);

            // Update Badge
            if(totalQty > 0) {
                badge.innerText = totalQty;
                badge.classList.remove('hidden');
            } else {
                badge.classList.add('hidden');
            }

            // Total price
            totalPriceEl.innerText = `$${totalPrice.toFixed(2)} MXN`;

            // Render List
            if(cart.length === 0) {
                container.innerHTML = `
                    <div class="text-center py-12 text-zinc-500">
                        <i class="fa-solid fa-utensils text-4xl mb-3"></i>
                        <p class="text-sm">Tu carrito está vacío.</p>
                        <p class="text-xs text-zinc-600 mt-1">Elige tus tacos o gringas favoritas para empezar.</p>
                    </div>
                `;
                return;
            }

            container.innerHTML = cart.map((item, idx) => `
                <div class="flex items-center justify-between bg-zinc-950 p-3 rounded-xl border border-zinc-800">
                    <div>
                        <h5 class="font-extrabold text-sm text-white">${item.name}</h5>
                        <span class="text-xs text-kinkin-yellow font-bold">$${item.price} MXN c/u</span>
                    </div>
                    <div class="flex items-center gap-3 bg-zinc-900 px-2 py-1 rounded-lg border border-zinc-700">
                        <button onclick="changeQty(${idx}, -1)" class="w-6 h-6 flex items-center justify-center text-zinc-400 hover:text-white font-bold">-</button>
                        <span class="text-xs font-bold text-white w-4 text-center">${item.qty}</span>
                        <button onclick="changeQty(${idx}, 1)" class="w-6 h-6 flex items-center justify-center text-zinc-400 hover:text-white font-bold">+</button>
                    </div>
                </div>
            `).join('');
        }

        // Toggle Drawer
        function toggleCartDrawer(forceOpen = false) {
            const drawer = document.getElementById('cart-drawer');
            if(forceOpen) {
                drawer.classList.remove('hidden');
            } else {
                drawer.classList.toggle('hidden');
            }
        }

        // Scroll helper
        function scrollToFullMenu() {
            document.getElementById('full-menu').scrollIntoView({ behavior: 'smooth' });
        }

        // Send Order to WhatsApp
        function sendOrderToWhatsApp() {
            if(cart.length === 0) {
                alert('Tu carrito está vacío. Agrega platillos antes de enviar el pedido.');
                return;
            }

            let msg = "¡Hola Taquería El Kinkin! 🌮👑\nQuiero hacer el siguiente pedido:\n\n";
            let total = 0;

            cart.forEach(item => {
                const subtotal = item.price * item.qty;
                total += subtotal;
                msg += `• ${item.qty}x ${item.name} - $${subtotal} MXN\n`;
            });

            msg += `\n*Total Estimado: $${total} MXN*\n\n¿Me confirman el tiempo de entrega? Gracias!`;

            const encodedMsg = encodeURIComponent(msg);
            const waUrl = `https://wa.me/523531269365?text=${encodedMsg}`;

            window.open(waUrl, '_blank');
        }

        // Mobile Menu Toggle
        document.getElementById('mobile-menu-btn').addEventListener('click', () => {
            const menu = document.getElementById('mobile-menu');
            menu.classList.toggle('hidden');
        });

        // Initialize on load
        window.onload = function() {
            renderMenu();
            updateCartUI();
        };
    </script>
</body>
</html>
