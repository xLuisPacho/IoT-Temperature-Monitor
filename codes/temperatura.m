% Temperatura mayor a 35 grados

channelID = 2844673; % Reemplázalo con tu Canal ID
fieldID = 1; % Campo donde está la temperatura

% Leer el último dato de temperatura
data = thingSpeakRead(channelID, 'Fields', fieldID, 'NumPoints', 1, 'ReadKey', 'M29KDFI41XEDLX2R');

% Verificar si la temperatura supera los 35°C
if data > 35
    fprintf('⚠️ ALERTA: Temperatura alta (%.2f °C)\n', data);
end