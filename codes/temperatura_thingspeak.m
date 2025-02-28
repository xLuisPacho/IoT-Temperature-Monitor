% Gráfica en MATLAB (En Tiempo Real)

channelID = 2844673; % Reemplázalo con tu canal
fieldID = 1;         % Field donde está la temperatura
readAPIKey = 'M29KDFI41XEDLX2R'; % Reemplázalo con tu clave de lectura

% Leer los últimos 100 datos en tiempo real
data = thingSpeakRead(channelID, 'Fields', fieldID, 'NumPoints', 100, 'ReadKey', readAPIKey);

% Verificar si se obtuvieron datos
if isempty(data)
    disp('No se pudieron leer datos del canal.');
else
    % Crear el gráfico en tiempo real
    figure;
    plot(data, '-o', 'LineWidth', 1.5, 'MarkerSize', 4);
    xlabel('Últimos 100 registros');
    ylabel('Temperatura (°C)');
    title('Temperatura en Tiempo Real');
    grid on;
end
