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

//사원등록 1페이지
function scrollToSection(sectionId) {
    document.getElementById(sectionId).scrollIntoView({ behavior: 'smooth' });
}

//2페이지
const urlParams = new URLSearchParams(window.location.search);

if (scrollToSection) {
	const element = document.getElementById(scrollToSection);
	if (element) {
		element.scrollIntoView({
			behavior : 'smooth'
		});
	}
}

//tr클릭시 체크박스
function toggleCheckbox(row) {
    var checkbox = row.querySelector('input[type="checkbox"]');
    checkbox.checked = !checkbox.checked;
}

