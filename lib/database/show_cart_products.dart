class ShowCartProductsList {
  static Map<String, dynamic> showCartProductsList = {
    "cartProducts": [
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
      }
    ]
  };
}
