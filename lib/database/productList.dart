class ProductList{
  static Map<String,dynamic> productlist={
    "products": [
      {
        "id": "1",
        "Images":"images/Intel_Core_i9_13900K_header_5.png",
        "name": "Intel Core i9-13900K",
        "category": "Processor",
        "brand": "Intel",
        "price": 599.99,
        "stock": 15,
        "specifications": {
          "cores": 24,
          "threads": 32,
          "base_clock": "3.0 GHz",
          "turbo_clock": "5.8 GHz",
          "cache": "36 MB"
        }
      },
      {
        "id": "2",
        "Images":"images/geforce-rtx-4090-gaming-oc-24g-01-500x500.webp",
        "name": "NVIDIA GeForce RTX 4090",
        "category": "Graphics Card",
        "brand": "NVIDIA",
        "price": 1599.99,
        "stock": 8,
        "specifications": {
          "memory": "24 GB GDDR6X",
          "cores": 16384,
          "base_clock": "2235 MHz",
          "boost_clock": "2520 MHz"
        }
      },
      {
        "id": "3",
        "Images":"images/Corsair Vengeance LPX 16GB (2 x 8GB) DDR4.webp",
        "name": "Corsair Vengeance LPX 16GB (2 x 8GB) DDR4",
        "category": "Memory",
        "brand": "Corsair",
        "price": 79.99,
        "stock": 20,
        "specifications": {
          "capacity": "16 GB",
          "type": "DDR4",
          "speed": "3200 MHz",
          "latency": "16-18-18-36"
        }
      },
      {
        "id": "4",
        "Images":"images/970-evo-plus-1tb-500x500.jpg",
        "name": "Samsung 970 EVO Plus 1TB NVMe SSD",
        "category": "Storage",
        "brand": "Samsung",
        "price": 129.99,
        "stock": 25,
        "specifications": {
          "capacity": "1 TB",
          "type": "NVMe",
          "read_speed": "3500 MB/s",
          "write_speed": "3300 MB/s"
        }
      },
      {
        "id": "5",
        "Images":"images/asus-rog-strix-z790-e-motherboard-02.jpg",
        "name": "ASUS ROG Strix Z790-E Gaming WiFi",
        "category": "Motherboard",
        "brand": "ASUS",
        "price": 349.99,
        "stock": 12,
        "specifications": {
          "socket": "LGA 1700",
          "chipset": "Intel Z790",
          "memory_slots": 4,
          "max_memory": "128 GB",
          "features": ["WiFi 6E", "Bluetooth 5.2", "PCIe 5.0"]
        }
      },
      {
        "id": "6",
        "Images":"images/Cooler Master Hyper 212 EVO.jpg",
        "name": "Cooler Master Hyper 212 EVO",
        "category": "Cooling",
        "brand": "Cooler Master",
        "price": 34.99,
        "stock": 30,
        "specifications": {
          "type": "Air Cooler",
          "fan_size": "120 mm",
          "heat_pipes": 4,
          "compatibility": ["Intel LGA 115x", "AMD AM4"]
        }
      },
      {
        "id": "7",
        "Images":"images/NZXT H510 Elite.webp",
        "name": "NZXT H510 Elite",
        "category": "Case",
        "brand": "NZXT",
        "price": 149.99,
        "stock": 10,
        "specifications": {
          "form_factor": "ATX",
          "dimensions": "210 x 460 x 428 mm",
          "material": "Steel and Tempered Glass",
          "features": ["Cable Management", "RGB Lighting"]
        }
      },
      {
        "id": "8",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "name": "Logitech G Pro X Wireless",
        "category": "Peripherals",
        "brand": "Logitech",
        "price": 129.99,
        "stock": 18,
        "specifications": {
          "type": "Wireless Gaming Mouse",
          "sensor": "Hero 25K",
          "DPI": "25600",
          "buttons": 6,
          "battery_life": "60 hours"
        }
      },
      {
        "id": "9",
        "name": "NVIDIA GeForce RTX 4080",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Graphics Card",
        "brand": "NVIDIA",
        "price": 1199.99,
        "stock": 18,
        "specs": {
          "memory": "16GB GDDR6X",
          "coreClock": "2505 MHz",
          "interface": "PCIe 4.0"
        }
      },
      {
        "id": "10",
        "name": "AMD Ryzen 9 7950X",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Processor",
        "brand": "AMD",
        "price": 699.99,
        "stock": 18,
        "specs": {
          "cores": "16",
          "threads": "32",
          "baseClock": "4.2 GHz",
          "boostClock": "5.7 GHz"
        }
      },
      {
        "id": "11",
        "name": "Corsair Vengeance LPX 32GB",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Memory",
        "brand": "Corsair",
        "price": 139.99,
        "stock": 18,
        "specs": {
          "type": "DDR4",
          "speed": "3200 MHz",
          "casLatency": "16"
        }
      },
      {
        "id": "12",
        "name": "Samsung 980 PRO 1TB",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Storage",
        "brand": "Samsung",
        "price": 159.99,
        "stock": 18,
        "specs": {
          "type": "NVMe M.2",
          "readSpeed": "7000 MB/s",
          "writeSpeed": "5000 MB/s"
        }
      },
      {
        "id": "13",
        "name": "ASUS ROG Crosshair VIII Hero",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Motherboard",
        "brand": "ASUS",
        "price": 349.99,
        "stock": 18,
        "specs": {
          "socket": "AM4",
          "chipset": "AMD X570",
          "memorySupport": "DDR4 4400 MHz"
        }
      },
      {
        "id": "14",
        "name": "Noctua NH-U12S",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Cooler",
        "brand": "Noctua",
        "price": 69.95,
        "stock": 18,
        "specs": {
          "type": "Air Cooler",
          "fanSize": "120mm",
          "compatibleSockets": ["Intel LGA115x", "AMD AM4"]
        }
      },
      {
        "id": "15",
        "name": "Fractal Design Meshify C",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Case",
        "brand": "Fractal Design",
        "price": 99.99,
        "stock": 18,
        "specs": {
          "formFactor": "Mid Tower",
          "color": "Black",
          "frontFans": "2 x 120mm"
        }
      },
      {
        "id": "16",
        "name": "EVGA SuperNOVA 850 G5",
        "Images":"images/Logitech-G-PRO-X-1-1-500x500.jpg.webp",
        "category": "Power Supply",
        "brand": "EVGA",
        "price": 149.99,
        "stock": 18,
        "specs": {
          "wattage": "850W",
          "efficiencyRating": "80+ Gold",
          "modular": "Fully Modular"
        }
      }
    ]
  };
}