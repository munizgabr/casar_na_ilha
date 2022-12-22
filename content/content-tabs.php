<section id="tabs" class="tabs pt-[100px] pl-3 pr-3"
<?php echo wp_is_mobile() == true ? "" : 'x-data="{ openTab: 0 }" x-cloak '; ?>
@scroll.window="
    top1 = document.querySelector('#imageRender_0').getBoundingClientRect()
    top2 = document.querySelector('#imageRender_1').getBoundingClientRect()
    top3 = document.querySelector('#imageRender_2').getBoundingClientRect()
    top4 = document.querySelector('#imageRender_3').getBoundingClientRect()
    heightScreen = window.innerHeight/2-150
    if(top1.top < heightScreen && top2.top > 0 && top3.top > 0 && top4.top > 0){
        openTab = 0
    }
    if(top1.top < 0 && top2.top < heightScreen && top3.top > 0 && top4.top > 0){
        openTab = 1
    }
    if(top1.top < 0 && top2.top < 0 && top3.top < heightScreen && top4.top > 0){
        openTab = 2
    }
    if(top1.top < 0 && top2.top < 0 && top3.top < 0 && top4.top < heightScreen){
        openTab = 3
    }
">
    <div class="center">
        <div class="grid grid-cols-1 xl:grid-cols-2 w-full relative justify-between pl-[20px] pr-[20px] xl:pl-0 xl:pr-0">
            <div id="test2" class="hidden xl:block">
                <div class="p-4 pb-32" id="imageRender_0">
                    <div>
                        <img src="<?php bloginfo('template_url'); ?>/src/images/image-0.jpg" alt="Monitoramento em Tempo Real">
                    </div>
                </div>
                <div class="pt-32 pb-32 p-4" id="imageRender_1">
                    <div>
                        <img src="<?php bloginfo('template_url'); ?>/src/images/image-1.jpg" alt="Tecnologia IoT">
                    </div>
                </div>
                <div class="pt-32 pb-32 p-4" id="imageRender_2">
                    <div>
                        <img src="<?php bloginfo('template_url'); ?>/src/images/image-2.jpg" alt="Gestão de Ativos">
                    </div>
                </div>
                <div class="pt-32 pb-32 p-4" id="imageRender_3">
                    <div>
                        <img src="<?php bloginfo('template_url'); ?>/src/images/image-3.jpg" alt="Manutenção Preventiva">
                    </div>
                </div>
            </div>
            <div>
                <div class="justify-between sticky top-[35%]">
                    <ul class="hidden xl:flex justify-between mb-20 list-tabs">
                        <li class="text-sm cursor-pointer font-semibold transition-all duration-100 -mb-4 group" >
                            <a id="first" href="#imageRender_0" class="hover:no-underline">
                                <div class="flex items-center space-x-2 pt-5 pb-3">
                                    <span
                                    :class="{'active': openTab === 0, 'no-active': openTab !== 0}"
                                    class="font-bold text-black relative">Monitoramento <br>em Tempo Real</span></div>
                            </a>
                        </li>
                        <li class="text-sm cursor-pointer font-semibold transition-all duration-100 -mb-4">
                            <a href="#imageRender_1" class="hover:no-underline">
                                <div class="flex items-center space-x-2 pt-5 pb-3">
                                    <span
                                    :class="{'active': openTab === 1, 'no-active': openTab !== 1}"
                                    class="font-bold text-black relative">Tecnologia <br>IoT</span></div>
                            </a>
                        </li>
                        <li class="text-sm cursor-pointer font-semibold transition-all duration-100 -mb-4">
                            <a href="#imageRender_2" class="hover:no-underline">
                                <div class="flex items-center space-x-2 pt-5 pb-3">
                                    <span
                                    :class="{'active': openTab === 2, 'no-active': openTab !== 2}"
                                    class="font-bold text-black relative">Gestão <br>de Ativos</span></div>
                            </a>
                        </li>
                        <li class="text-sm cursor-pointer font-semibold transition-all duration-100 -mb-4">
                            <a href="#imageRender_3" class="hover:no-underline">
                                <div class="flex items-center space-x-2 pt-5 pb-3">
                                    <span
                                    :class="{'active': openTab === 3, 'no-active': openTab !== 3}"
                                    class="font-bold text-black relative">Manutenção <br>Preventiva</span></div>
                            </a>
                        </li>
                    </ul>
                    <div
                    class="flex w-full relative h-full xl:h-[300px] mb-10 lg:mb-0 duration-1000"
                    x-show="openTab === 0"
                    x-transition:enter-start="opacity-0 scale-90"
                    x-transition:enter="ease-out transition-slow"
                    x-transition:enter-end="opacity-100 scale-100"
                    >
                        <div>
                            <div class="block xl:hidden mx-auto">
                                <h2 class="text-black font-bold text-xl mb-2 text-center">Monitoramento em Tempo Real</h2>
                                <img class="mx-auto" src="<?php bloginfo('template_url'); ?>/src/images/monitoramente-em-tempo-real-small.jpg" alt="Monitoramento em Tempo Real">
                            </div>
                            <p class="text-base xl:text-lg text-black pl-[20px]">
                                Acompanhe de forma simultânea as máquinas da operação de forma inteligente e inovadora. Seja no smartphone ou no computador, tenha o controle de detalhes importantes do funcionamento das máquinas aumentando assim a produtividade da empresa.
                            </p>
                        </div>
                    </div>
                    <div class="flex w-full relative h-full xl:h-[300px] mb-14 lg:mb-0 duration-1000"
                    x-show="openTab === 1"
                    x-transition:enter-start="opacity-0 scale-90"
                    x-transition:enter="ease-out transition-slow"
                    x-transition:enter-end="opacity-100 scale-100"
                    >
                        <div>
                            <div class="block xl:hidden">
                                <h2 class="text-black font-bold text-xl mb-2 text-center">Tecnologia IoT</h2>
                                <img class="mx-auto" src="<?php bloginfo('template_url'); ?>/src/images/tecnologia-iot-small.jpg" alt="Tecnologia IoT">
                            </div>
                            <p class="text-base xl:text-lg text-black pl-[20px]">
                                Através da inovação do IoT (Internet das coisas) as máquinas e ativos da operação estão sempre conectados. Os sensores Voice Of The Machine™ e SensoNODE™  dão voz a operação, permitindo uma rápida medição, análise e controle.
                            </p>
                        </div>
                    </div>
                    <div class="flex w-full relative h-full xl:h-[300px] mb-14 lg:mb-0 duration-1000"
                    x-show="openTab === 2"
                    x-transition:enter-start="opacity-0 scale-90"
                    x-transition:enter="ease-out transition-slow"
                    x-transition:enter-end="opacity-100 scale-100"
                    >
                        <div>
                            <div class="block xl:hidden">
                                <h2 class="text-black font-bold text-xl mb-2 text-center">Gestão de Ativos</h2>
                                <img class="mx-auto" src="<?php bloginfo('template_url'); ?>/src/images/gesta-de-ativos-small.jpg" alt="Gestão de Ativos">
                            </div>
                            <p class="text-base xl:text-lg text-black pl-[20px]">
                                Acompanhe de forma simultânea as máquinas da operação de forma inteligente e inovadora. Seja no smartphone ou no computador, tenha o controle de detalhes importantes do funcionamento das máquinas aumentando assim a produtividade da empresa.
                            </p>
                        </div>
                    </div>
                    <div class="flex w-full relative h-full xl:h-[300px] duration-1000"
                    x-show="openTab === 3"
                    x-transition:enter-start="opacity-0 scale-90"
                    x-transition:enter="ease-out transition-slow"
                    x-transition:enter-end="opacity-100 scale-100"
                    >
                        <div>
                            <div class="block xl:hidden">
                                <h2 class="text-black font-bold text-xl mb-2 text-center">Manutenção Preventiva</h2>
                                <img class="mx-auto" src="<?php bloginfo('template_url'); ?>/src/images/manutencao-preventiva-small.jpg" alt="Manutenção Preventiva">
                            </div>
                            <p class="text-base xl:text-lg text-black pl-[20px]">
                                Se antecipe aos problemas com os equipamentos fazendo a manutenção preventiva dos ativos monitorados. Automatize e gerencie os processos para garantir sempre o bom funcionamento, evitando tempos de máquinas paradas ou prejuízos maiores.

                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
</section>