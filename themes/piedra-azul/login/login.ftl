<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "form">
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
        <script src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js" defer></script>

        <div class="flex flex-col md:flex-row min-h-screen w-screen bg-[#F8FAFC] font-sans m-0 p-0 overflow-hidden">
            
            <div class="hidden md:flex md:w-[35%] lg:w-[30%] p-12 flex-col justify-between text-white relative overflow-hidden shrink-0 shadow-2xl"
                 style="background: linear-gradient(rgba(29, 78, 216, 0.8), rgba(30, 58, 138, 0.9)), url('${url.resourcesPath}/img/PiedraAzul1.png'); background-size: cover; background-position: center;">
                
                <div class="absolute top-[-10%] right-[-10%] w-80 h-80 bg-blue-400 rounded-full blur-[120px] opacity-20"></div>
                
                <div class="relative z-10">
                    <a href="http://localhost:4200" class="inline-flex items-center gap-3 px-6 py-3 bg-white/20 hover:bg-white/30 border border-white/40 rounded-2xl backdrop-blur-md transition-all mb-16 group shadow-lg">
                        <span class="material-symbols-outlined text-white font-bold">arrow_back</span>
                        <span class="text-xs font-black tracking-widest uppercase text-white">Volver al inicio</span>
                    </a>
            
                    <div class="flex items-center mb-6">
                        <span class="material-symbols-outlined text-blue-200 text-6xl drop-shadow-lg">medical_services</span>
                    </div>
                    
                    <h2 class="text-5xl font-black leading-[0.9] tracking-tighter drop-shadow-sm">Piedra <br>Azul</h2>
                    <div class="h-1.5 w-16 bg-blue-300 mt-8 rounded-full shadow-lg"></div>
                    
                    <p class="mt-12 text-blue-50 text-xl font-medium leading-relaxed drop-shadow-md">
                        Cuidamos tu salud con <br>
                        <span class="text-white font-black underline decoration-blue-400 decoration-4">excelencia y dedicación.</span>
                    </p>
                </div>

                <div class="relative z-10">
                    <div class="flex items-center gap-4 mb-8 bg-white/10 p-4 rounded-2xl border border-white/10 backdrop-blur-md">
                        <div class="flex -space-x-3">
                            <div class="w-10 h-10 rounded-full border-2 border-blue-600 bg-white/20 flex items-center justify-center backdrop-blur-sm">
                                <span class="material-symbols-outlined text-sm text-white">person</span>
                            </div>
                            <div class="w-10 h-10 rounded-full border-2 border-blue-600 bg-white/10 flex items-center justify-center backdrop-blur-sm">
                                <span class="material-symbols-outlined text-sm text-white">person</span>
                            </div>
                        </div>
                        <span class="text-[12px] font-black uppercase tracking-widest text-white/90">Pacientes Felices y Sanos</span>
                    </div>
                    <p class="text-white/30 text-[10px] uppercase font-black tracking-[0.5em]">Red de Salud Digital</p>
                </div>
            </div>

            <div class="flex-grow flex items-center justify-center p-6 bg-slate-50 relative">
                <div class="w-full max-w-[460px] bg-white p-12 rounded-[3.5rem] shadow-[0_32px_64px_-16px_rgba(29,78,216,0.1)] border border-slate-100 relative z-10">
                    
                    <div class="mb-12 text-center md:text-left">
                        <h1 class="text-4xl font-black text-slate-800 tracking-tight mb-3">Bienvenid@</h1>
                        <p class="text-slate-400 font-medium">Inicia sesión para gestionar tus citas médicas.</p>
                    </div>

                    <form action="${url.loginAction}" method="post" class="space-y-6">
                        <div class="space-y-2 group">
                            <label class="text-[11px] font-black text-slate-500 uppercase tracking-widest ml-1 transition-colors group-focus-within:text-blue-600">Usuario / Documento</label>
                            <div class="relative">
                                <span class="material-symbols-outlined absolute left-5 top-1/2 -translate-y-1/2 text-slate-300 group-focus-within:text-blue-600">person</span>
                                <input id="username" name="username" type="text" autofocus
                                    class="w-full pl-14 pr-6 py-5 bg-slate-50 border border-slate-200 rounded-[1.5rem] focus:ring-8 focus:ring-blue-100 focus:border-blue-600 outline-none transition-all font-bold text-slate-700 placeholder:text-slate-300"
                                    placeholder="Número de identidad o Correo">
                            </div>
                        </div>

                        <div class="space-y-2 group" x-data="{ show: false }">
                            <label class="text-[11px] font-black text-slate-500 uppercase tracking-widest ml-1 transition-colors group-focus-within:text-blue-600">Contraseña</label>
                            <div class="relative">
                                <span class="material-symbols-outlined absolute left-5 top-1/2 -translate-y-1/2 text-slate-300 group-focus-within:text-blue-600">lock</span>
                                <input id="password" name="password" :type="show ? 'text' : 'password'"
                                    class="w-full pl-14 pr-14 py-5 bg-slate-50 border border-slate-200 rounded-[1.5rem] focus:ring-8 focus:ring-blue-100 focus:border-blue-600 outline-none transition-all font-bold text-slate-700 placeholder:text-slate-300"
                                    placeholder="••••••••">
                                <button type="button" @click="show = !show" class="absolute right-5 top-1/2 -translate-y-1/2 text-slate-300 hover:text-blue-600 transition-colors">
                                    <span class="material-symbols-outlined text-2xl" x-text="show ? 'visibility' : 'visibility_off'"></span>
                                </button>
                            </div>
                        </div>

                        <button type="submit" 
                                class="w-full py-5 bg-[#1D4ED8] text-white font-black rounded-[1.5rem] shadow-xl shadow-blue-200 hover:bg-blue-700 active:scale-[0.97] transition-all flex items-center justify-center gap-3 uppercase tracking-[0.2em] text-sm mt-8">
                            Entrar <span class="material-symbols-outlined font-bold">login</span>
                        </button>
                    </form>

                    <div class="mt-12 pt-10 border-t border-slate-100 text-center">
                        <p class="text-slate-400 font-bold text-sm">
                            ¿No tienes cuenta? 
                            <a href="http://localhost:4200/registro" class="text-[#1D4ED8] font-black hover:underline ml-2">Regístrate aquí</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>