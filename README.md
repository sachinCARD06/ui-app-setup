# UI App Set - Modern React + Tailwind CSS v4+

A modern React application built with the latest technologies:

- **Node.js v22+** - Latest LTS version
- **React 19** - Latest React features
- **Tailwind CSS v4+** - Modern CSS framework
- **Vite** - Fast build tool
- **TypeScript** - Type safety

## Features

- 🚀 **Modern Stack**: Built with the latest versions of all dependencies
- 🎨 **Tailwind CSS v4+**: Latest CSS framework with modern features
- 🌙 **Dark Mode Support**: Built-in dark mode with Tailwind CSS
- 📱 **Responsive Design**: Mobile-first responsive design
- ⚡ **Fast Development**: Hot module replacement with Vite
- 🔧 **TypeScript**: Full type safety

## Prerequisites

- Node.js v22+ (recommended: v22.17.1 or later)
- npm or yarn

## Getting Started

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd ui-app-set
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   npm run dev
   ```

4. **Open your browser**
   Navigate to `http://localhost:3000`

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint
- `npm run tailwind:watch` - Watch Tailwind CSS changes
- `npm run tailwind:build` - Build Tailwind CSS

## Tailwind CSS v4+ Features

This project uses Tailwind CSS v4+ with the following modern features:

- **Modern Import Syntax**: `@import "tailwindcss"`
- **Layer System**: `@layer base`, `@layer components`, `@layer utilities`
- **Dark Mode**: Built-in dark mode support
- **Modern Animations**: Enhanced animation utilities
- **Backdrop Blur**: Modern glass morphism effects
- **Gradient Text**: Advanced text styling

## Project Structure

```
ui-app-set/
├── src/
│   ├── App.tsx          # Main application component
│   ├── index.css        # Tailwind CSS imports and custom styles
│   ├── main.tsx         # Application entry point
│   └── assets/          # Static assets
├── public/              # Public assets
├── tailwind.config.js   # Tailwind CSS configuration
├── postcss.config.js    # PostCSS configuration
├── vite.config.ts       # Vite configuration
└── package.json         # Dependencies and scripts
```

## Customization

### Adding Custom Colors

Edit `tailwind.config.js`:

```javascript
theme: {
  extend: {
    colors: {
      'custom-blue': '#1e40af',
    },
  },
},
```

### Adding Custom Components

Add to `src/index.css`:

```css
@layer components {
  .btn-primary {
    @apply bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded;
  }
}
```

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License
