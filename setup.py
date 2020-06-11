import setuptools

install_requires = ["abjad"]

keywords = [
    "abjad",
    "music composition",
    "music notation",
    "formalized score control",
    "lilypond",
]

if __name__ == "__main__":
    setuptools.setup(
        author="Matt A Mason",
        author_email="mattmasonpiano@gmail.com",
        install_requires=install_requires,
        keywords=", ".join(keywords),
        name="mason",
        packages=["mason"],
        platforms="Any",
        url="https://github.com/MattAaronMason/mason",
    )
