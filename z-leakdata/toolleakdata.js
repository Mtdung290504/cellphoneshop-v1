function getRightName(name) {
    let count = name.split("").filter(c => c === '-').length;
      if(name.indexOf('-')!=-1 && count>=2) {
          var index = name.lastIndexOf("-");
          name = name.slice(0, index);
      }
      return name.trim();
  }
  async function downImages(links, name) {
      if(!Number.isInteger(saleprice)) {alert('Bỏ sản phẩm này'); return;}
      if(!Number.isInteger(phone.price)) {alert('Bỏ sản phẩm này'); return;}
      if(!Number.isInteger(phone.discount)) {alert('Bỏ sản phẩm này'); return;}
      if(firms.indexOf(phone.firm)==-1) {
          let firm = phone.name.split(' ')[0].toLowerCase();
          looptime = firms.length;
          for(let i=0;i<looptime;i++) {
              if(firms[i].toLowerCase() == firm) {
                  phone.firm = firms[i];
              }
          }
          if(firms.indexOf(phone.firm)==-1) {alert('Bỏ sản phẩm này'); return;}
      }
    
      const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
      const arr_links = [];
      const length = (links.length>10) ? 10 : links.length;
  
      for (let index = 0; index < length; index++) {
          const link = links[index];
          try {
              const response = await fetch(link);
              const blob = await response.blob();
              const file = new File([blob], `${name}-${index + 1}.jpg`);
              const url = URL.createObjectURL(file);
              const a = document.createElement('a');
              a.href = url;
              a.download = `${name}-${index + 1}.jpg`;
              arr_links.push(`${name}-${index + 1}.jpg`);
              a.click();
              URL.revokeObjectURL(url);
          } catch (error) {
              console.error(error);
          }
  
          // Đặt thời gian chờ giữa các tải xuống để tránh giới hạn của trình duyệt
          await delay(100);
      }
  
      // Khi đã tải xuống và xử lý tất cả các ảnh
      console.log('Hoàn thành tải xuống ảnh');
      console.log('số ảnh: '+arr_links.length);
  let spcV = phone.specifications;
  let spc = 
  `$s = new Specifications(
  "${spcV.screenSize}", 
  "${spcV.screenTechnology}", 
  "${spcV.behindCam}", 
  "${spcV.frontCam}",
  "${spcV.chipset}", 
  "${spcV.ram}", 
  "${spcV.internalMemory}", 
  "${spcV.pin}",
  "${spcV.sim}", 
  "${spcV.os}", 
  "${spcV.screenResolution}", 
  "${spcV.screenFeature}",
  );\n`;
  spc+=
  `$p = new Phone(
  "${phone.name}", 
  ${Number(phone.price)}, 
  ${Number(firms.indexOf(phone.firm) + 1)}, 
  ${Number(phone.discount)},
  "${phone.decription}", 
  ${JSON.stringify(arr_links)}, 
  $s
  );
  add_phone($p);
  unset($s);
  unset($p);`;
  console.log(spc);
  if(confirm('Xác nhận sao chép?')) {
      window.navigator.clipboard.writeText(spc);
  }
  }
  let arr_links = [];
  let firms = ['Apple','Samsung','Xiaomi','OPPO','realme','vivo','Nokia','OnePlus','ASUS','Nubia','TECNO'];
  let phone = {
      name: '',
      firm: '',
      price: '',
      discount: 0,
      decription: [],
      images: [],
      specifications: {
          screenSize: '-',
          screenTechnology: '-',
          behindCam: '-',
          frontCam: '-',
          chipset: '-',
          ram: '-',
          internalMemory: '-',
          pin: '-',
          sim: '-',
          os: '-',
          screenResolution: '-',
          screenFeature: '-'
      }
  };
  let looptime;
  
  phone.name = getRightName(document.querySelector('div.box-product-name h1').textContent.trim());
  phone.firm = document.querySelectorAll('a.button__breadcrumb-item')[1].textContent.trim();
  looptime = firms.length;
      for(let i=0;i<looptime;i++) {
          if(firms[i].toLowerCase() == phone.firm.toLowerCase()) {
              phone.firm = firms[i];
          }
      }
  let saleprice;
  try { 
      saleprice = Number(document.querySelector('.active.tpt-box .tpt---sale-price').textContent.trim().replace('đ', '').replaceAll('.','')); 
  } catch (error) {
      saleprice = Number(document.querySelector('.box-detail-product__box-center.column .product__price--show').textContent.trim().replace('₫', '').replaceAll('.',''));
  }
  try {
      phone.price = Number(document.querySelector('.tpt---price').textContent.trim().replace('đ', '').replaceAll('.',''));
  } catch (error) {
      try {
          phone.price = Number(document.querySelector('.box-detail-product__box-center.column .product__price--through').textContent.trim().replace('₫', '').replaceAll('.','')); 
      } catch (e) {
          phone.price = saleprice;
      }
  }
  phone.discount = parseInt(100*(phone.price - saleprice)/phone.price);
  let decription_html = document.querySelectorAll('div.desktop ul li');
  looptime = decription_html.length;
  for(let i=0;i<looptime;i++){phone.decription.push(decription_html[i].textContent.trim())}
  phone.decription = phone.decription.join('\n');
  
  let images = document.querySelectorAll('a.spotlight img');
  let firstImage = document.querySelector('.box-ksp img').src;
  looptime = images.length;
  if(looptime==0 || !firstImage) {alert('Bỏ sản phẩm này')}
  phone.images.push(firstImage);
  for(let i=0;i<looptime;i++) {
      phone.images.push(images[i].src);
  }
  
  let decriptions = document.querySelectorAll('.technical-content-item');
  looptime = decriptions.length;
  for(let i=0;i<looptime;i++) {
      let decription = {
          title: decriptions[i].children[0].textContent.trim(),
          content: decriptions[i].children[1].innerText.trim()
      }
      switch (decription.title) {
          case 'Kích thước màn hình': phone.specifications.screenSize = decription.content.replaceAll('"', '\\"'); break;
          case 'Công nghệ màn hình': phone.specifications.screenTechnology = decription.content.replaceAll('"', '\\"'); break;
          case 'Camera sau': phone.specifications.behindCam = decription.content.replaceAll('"', '\\"'); break;
          case 'Camera trước': phone.specifications.frontCam = decription.content.replaceAll('"', '\\"'); break;
          case 'Chipset': phone.specifications.chipset = decription.content.replaceAll('"', '\\"'); break;
          case 'Dung lượng RAM': phone.specifications.ram = decription.content.replaceAll('"', '\\"'); break;
          case 'Bộ nhớ trong': phone.specifications.internalMemory = decription.content.replaceAll('"', '\"'); break;
          case 'Pin': phone.specifications.pin = decription.content.replaceAll('"', '\\"'); break;
          case 'Thẻ SIM': phone.specifications.sim = decription.content.replaceAll('"', '\\"'); break;
          case 'Hệ điều hành': phone.specifications.os = decription.content.replaceAll('"', '\\"'); break;
          case 'Độ phân giải màn hình': phone.specifications.screenResolution = decription.content.replaceAll('"', '\\"'); break;
          case 'Tính năng màn hình': phone.specifications.screenFeature = decription.content.replaceAll('"', '\\"'); break;
      }
  }
  downImages(phone.images, phone.name.toLowerCase().replaceAll(' ','_'));
  console.log(phone);