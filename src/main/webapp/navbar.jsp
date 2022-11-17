<nav
	class="navbar navbar-expand-lg navbar-dark purple mt-1  rounded container">
	<a class="navbar-brand" href="Home.jsp">NoteTaker</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse container"
		id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="Home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="add_notes.jsp">Add
					Note</a></li>
			<li class="nav-item"><a class="nav-link " href="all_notes.jsp">Show
					Notes</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>