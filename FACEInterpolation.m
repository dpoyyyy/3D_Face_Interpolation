% Reading the text file
data = readmatrix('C:\Users\Center\Desktop\face land\landmarks.txt'); % Assuming your file name is landmarks.txt
x = data(:, 1); % X coordinates
y = data(:, 2); % Y coordinates
z = data(:, 3); % Z coordinates

% Interpolating coordinates
[xi, yi] = meshgrid(linspace(min(x), max(x), 200), linspace(min(y), max(y), 200));
zi = griddata(x, y, z, xi, yi, 'cubic'); % Cubic interpolation

% Creating the figure
figure('Color', 'white', 'Position', [100 100 1000 800]);
h = surf(xi, yi, zi);

% Enhancing surface properties
set(h, 'EdgeColor', 'none', 'FaceAlpha', 0.95);

% Applying advanced graphical settings
colormap(turbo); % A vibrant colormap
lighting gouraud; % Smooth lighting
shading interp; % Smoother surface rendering
colorbar('FontSize', 12, 'LineWidth', 1.2); % Improved colorbar appearance

% Adding titles and labels
title('Enhanced 3D Facial Model', 'FontSize', 16, 'FontWeight', 'bold');
xlabel('X (Width)', 'FontSize', 14);
ylabel('Y (Height)', 'FontSize', 14);
zlabel('Z (Depth)', 'FontSize', 14);

% Adjusting 3D view settings
view(45, 30); % Adjusting 3D view angle
grid on; % Displaying grid
axis tight; % Compact axis display

% Adding lighting and material properties
camlight('headlight'); % Front light source
material shiny; % Enhancing material reflectiveness

% Smoothing edges and improving borders
zi(isnan(zi)) = min(z); % Filling NaNs with the minimum depth value
outline = contour3(xi, yi, zi, 10, 'LineWidth', 1, 'LineColor', [0 0 0]); % Adding smooth outline

% Improving axes properties
ax = gca;
ax.FontSize = 12;
ax.LineWidth = 1.5;
ax.Box = 'on'; % Ensuring a box is displayed around the axes




% Creating the figure again
figure('Color', 'white', 'Position', [100 100 1000 800]);
h = surf(xi, yi, zi);
set(h, 'EdgeColor', 'none', 'FaceAlpha', 0.95);

% Advanced graphical settings
colormap(parula); % Beautiful color map
lighting phong; % Advanced lighting settings
shading interp; % Reducing undesirable grid effects
colorbar;

% Titles and labels
title('Enhanced 3D Facial Model', 'FontSize', 16, 'FontWeight', 'bold');
xlabel('X (Width)', 'FontSize', 30);
ylabel('Y (Height)', 'FontSize', 30);
zlabel('Z (Depth)', 'FontSize', 30);

% Adjusting 3D view settings
view(45, 30); % 3D view angle
grid on; % Displaying grid
axis tight; % Compact axis display

% Adding lighting and material properties
camlight headlight; % Front light source
material shiny; % Setting material for better light reflection



% Creating the figure again
figure('Color', 'white', 'Position', [100 100 1000 800]);
h = surf(xi, yi, zi);

% Enhancing surface properties
set(h, 'EdgeColor', 'none', 'FaceAlpha', 1); % Set FaceAlpha to 1 to avoid transparency

% Applying advanced graphical settings
colormap(gray); % Using grayscale colormap to remove bright colors
lighting gouraud; % Smooth lighting
shading interp; % Smoother surface rendering
colorbar('FontSize', 12, 'LineWidth', 1.2); % Colorbar is removed if not needed

% Adding titles and labels
title('Enhanced 3D Facial Model', 'FontSize', 16, 'FontWeight', 'bold');
xlabel('X (Width)', 'FontSize', 14);
ylabel('Y (Height)', 'FontSize', 14);
zlabel('Z (Depth)', 'FontSize', 14);

% Adjusting 3D view settings
view(45, 30); % Adjusting 3D view angle
grid on; % Displaying grid
axis tight; % Compact axis display

% Adding lighting and material properties
camlight('headlight'); % Front light source
material shiny; % Enhancing material reflectiveness

% Improving axes properties
ax = gca;
ax.FontSize = 12;
ax.LineWidth = 1.5;
ax.Box = 'on'; % Ensuring a box is displayed around the axes

