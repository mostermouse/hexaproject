// Get payzon elements
const payzon12 = document.getElementById('payzon-12');
const payzon13 = document.getElementById('payzon-13');
const payzon14 = document.getElementById('payzon-14');
const payzon15 = document.getElementById('payzon-15');

// Get corresponding menu items
const menuItems12 = payzon12.querySelectorAll('.menu-item');
const menuItems13 = payzon13.querySelectorAll('.menu-item');
const menuItems14 = payzon14.querySelectorAll('.menu-item');
const menuItems15 = payzon15.querySelectorAll('.menu-item');

// Function to show the additional items when mouse is over a payzon element
function showItems(menuItems) {
    menuItems.forEach(item => item.style.display = 'block');
}

// Function to hide the additional items when mouse leaves a payzon element
function hideItems(menuItems) {
    menuItems.forEach(item => item.style.display = 'none');
}

// Event listeners for mouse entering and leaving each payzon element
payzon12.addEventListener('mouseenter', () => showItems(menuItems12));
payzon12.addEventListener('mouseleave', () => hideItems(menuItems12));

payzon13.addEventListener('mouseenter', () => showItems(menuItems13));
payzon13.addEventListener('mouseleave', () => hideItems(menuItems13));

payzon14.addEventListener('mouseenter', () => showItems(menuItems14));
payzon14.addEventListener('mouseleave', () => hideItems(menuItems14));

payzon15.addEventListener('mouseenter', () => showItems(menuItems15));
payzon15.addEventListener('mouseleave', () => hideItems(menuItems15));

function validateForm() {
	var employmentType = document.getElementById("employmentType").value;
	var hireDate = document.getElementById("hireDate").value;
	var relationship = document.getElementById("relationship").value;
	var parentsName = document.getElementById("parentsName").value;
	if (employmentType === "") {
		alert("기본 정보의 고용 형태를 선택해주세요.");
		document.getElementById("employmentType").focus(); // 기본 정보의 고용 형태에 돌아감
		return false;
	} else if (hireDate === "") {
		alert("기본 정보의 입사일을 선택해주세요.");
		document.getElementById("hireDate").focus(); // 기본 정보의 입사일에 돌아감
		return false;
	}
	return true;
}

//url에 scrollToSection이 있으면 해당하는 section의 id값부분으로 이동
document.addEventListener("DOMContentLoaded", function() {
    const urlParams = new URLSearchParams(window.location.search);
    const scrollToSection = urlParams.get('scrollToSection');
    
    if (scrollToSection) {
        const sectionElement = document.getElementById(scrollToSection);
        if (sectionElement) {
            sectionElement.scrollIntoView({ behavior: 'smooth' });
        }
    }
});


//tr클릭시 체크박스
function toggleCheckbox(row) {
    var checkbox = row.querySelector('input[type="checkbox"]');
    checkbox.checked = !checkbox.checked;
}

// select 요소를 참조합니다.
var select = document.getElementById(".monthSelect");

// 숫자를 쉼표로 구분된 형식으로 변환하는 함수
function numberWithCommas(x) {
    var parts = x.toString().split(".");
    parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return parts.join(".");
}

var cells = document.querySelectorAll(".empRegister-body");
cells.forEach(function(cell) {
    var number = parseFloat(cell.textContent.replace(/,/g, ""));
    cell.textContent = numberWithCommas(number.toFixed(3));
});

