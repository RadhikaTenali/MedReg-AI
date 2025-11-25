# MedReg AI: Automated Compliance Testing

> **AI-Powered Test Case Generation for Healthcare Software Compliance**

An intelligent tool that streamlines test case generation for healthcare software by parsing requirements documents, extracting compliance mappings, and generating comprehensive, traceable test cases that meet FDA, ISO 13485, IEC 62304, GDPR, and HIPAA standards.

---

## 🎯 Project Overview

MedReg AI addresses the critical need for compliant, traceable test cases in healthcare software development. It reduces manual effort by 60%, ensures regulatory compliance, and provides complete traceability from requirements to test cases.

### Key Benefits

**For Healthcare Organizations:**
- ✅ Reduce manual test case creation effort by 60-80%
- ✅ Ensure regulatory compliance with built-in standards
- ✅ Generate comprehensive test cases in minutes, not days
- ✅ Maintain consistent test case format and structure

**For Test Engineers:**
- 🤖 AI-powered test case generation from requirements
- 📋 Built-in compliance validation and reporting
- 🔗 Clear traceability from requirements to test cases
- 🔄 Natural language refinement of generated test cases

**For Compliance Teams:**
- 📊 Complete regulatory coverage tracking
- 📁 Automated evidence collection for audits
- ✅ Audit-ready traceability matrices
- 🔍 Compliance gap identification

---

## ✨ Features

### 🤖 AI-Powered Processing
- **Google Vertex AI & Gemini Integration**: Advanced AI models for intelligent requirement extraction
- **Multi-Provider Support**: OpenAI GPT and Anthropic Claude as alternatives
- **Natural Language Processing**: Understands healthcare-specific terminology
- **Rule-Based Fallback**: Ensures reliability when AI services are unavailable
- **Explainable AI**: Human-readable explanations for AI decisions
- **Predictive Analytics**: ML-based test prioritization and risk assessment

### 📄 Multi-Format Document Support
- **PDF Processing**: Extract requirements with preserved formatting
- **Word Documents**: Parse .docx and .doc files with hierarchy preservation
- **XML Healthcare Specs**: Handle structured healthcare specifications
- **HTML Processing**: Extract content from web-based documentation
- **Plain Text**: Support for .txt requirement files

### 🏥 Healthcare-Specific Features
- **Regulatory Compliance**: Built-in support for FDA, ISO 13485, IEC 62304, GDPR, HIPAA
- **Patient Safety Focus**: Prioritizes patient safety requirements
- **Medical Device Software**: Specialized for medical device software validation
- **Clinical Workflow Integration**: Understands healthcare workflows

### 🧪 Comprehensive Test Case Generation
- **Multiple Test Types**: Positive, negative, boundary, integration, performance, security, usability, compliance
- **Step-by-Step Actions**: Detailed test steps with expected results
- **Test Data Requirements**: Automatic generation of test data specifications
- **Priority Mapping**: Intelligent priority assignment based on criticality
- **Predictive Prioritization**: ML-based test case prioritization using historical data
- **Self-Healing Tests**: Automatic test maintenance and adaptation
- **Visual Regression Testing**: Automated UI change detection
- **Risk-Based Testing**: AI-powered risk assessment and coverage optimization

### 📊 Enterprise Integration
- **Multiple Export Formats**: JSON, Excel, CSV
- **Jira Integration**: Direct export to Jira with proper formatting
- **Azure DevOps Support**: Seamless integration with Azure DevOps
- **Custom Templates**: Configurable export templates

### 🔗 Complete Traceability
- **Requirement-to-Test Mapping**: Clear traceability from requirements to test cases
- **Compliance Traceability**: Links test cases to regulatory standards
- **Evidence Collection**: Automated capture of execution logs, screenshots, artifacts
- **Coverage Analysis**: Identifies gaps in test coverage
- **Regulatory Monitoring**: Continuous monitoring of regulatory changes
- **Audit Trail**: Comprehensive audit trail for compliance validation
- **Change Impact Analysis**: Tracks impact of requirement changes

---

## 🏗️ Project Structure

```
MedRed-AI/
├── input_parsing/              # Input & Parsing Module
│   ├── __init__.py
│   ├── document_parser.py      # PDF, Word, XML parsing
│   ├── requirement_extractor.py # AI-powered requirement extraction
│   ├── compliance_mapper.py    # Regulatory compliance mapping
│   └── utils.py               # Helper functions
├── test_case_generation/       # Test Case Generation & Output Module
│   ├── __init__.py
│   ├── test_case_generator.py  # AI-powered test case generation
│   ├── compliance_validator.py # Compliance validation
│   ├── export_formats.py       # Jira, Azure DevOps, Excel export
│   ├── traceability_matrix.py  # Traceability matrix generation
│   ├── evidence_collection.py  # Automated evidence collection
│   ├── explainable_ai.py       # AI explainability for compliance
│   ├── predictive_prioritization.py # ML-based test prioritization
│   ├── regulatory_monitoring.py # Continuous regulatory monitoring
│   ├── self_healing.py         # Self-healing test maintenance
│   └── visual_regression.py    # Visual regression testing
├── docs/                       # Documentation
│   ├── design_docs/           # Architecture and design documents
│   ├── api_docs/              # API reference
│   ├── prompts/               # AI prompt library
│   └── user_guide/            # User guides
├── sample_demo_data/          # Sample data for testing
├── scripts/                   # Deployment and integration helpers
├── tests/                     # Unit and integration tests
├── streamlit_app.py           # Web interface
├── config.py                  # Configuration management
├── requirements.txt           # Python dependencies
├── Dockerfile                 # Docker containerization
├── README.md                  # This file
├── DEPLOYMENT_GUIDE.md        # Deployment and demo guide
└── CHANGELOG.md               # Version history
```

---

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/RadhikaTenali/MedReg-AI.git
cd MedReg-AI
```

### 2. Set Up Environment
```bash
# Create virtual environment
python -m venv venv

# Activate environment
# Windows:
venv\Scripts\activate
# Mac/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### 3. Configure API Credentials
```bash
# For Google AI (Gemini)
export GOOGLE_AI_API_KEY="your-gemini-api-key"

# Alternative: OpenAI
export OPENAI_API_KEY="your-openai-api-key"

# Alternative: Anthropic
export ANTHROPIC_API_KEY="your-anthropic-api-key"
```

### 4. Run the Web Interface
```bash
streamlit run streamlit_app.py
```

Open your browser to `http://localhost:8501`

### 5. Use the CLI Interface
```bash
# Parse a document
python scripts/cli.py parse --input requirements.pdf --output results.json

# Generate test cases
python scripts/cli.py generate --input results.json --output test_cases.xlsx
```

---

## 💻 Usage Examples

### Basic Usage
```python
from input_parsing import parse_healthcare_document
from test_case_generation import TestCaseGenerator, ExportManager

# Parse healthcare document
result = parse_healthcare_document("requirements.pdf")

# Generate test cases
generator = TestCaseGenerator()
test_cases = generator.generate_test_cases(result['requirements'])

# Export to Excel
export_manager = ExportManager()
export_manager.export_test_cases(test_cases, "test_cases.xlsx", "excel")
```

### Advanced Usage with Compliance
```python
# Generate test cases with compliance validation
test_cases = generator.generate_test_cases(
    result['requirements'],
    result['compliance_mappings']
)

# Validate compliance
from test_case_generation import ComplianceValidator
validator = ComplianceValidator()
for tc in test_cases:
    report = validator.validate_test_case(tc, tc.compliance_refs)
    print(f"Compliance score: {report.compliance_score}")
```

---

## 📋 Compliance Standards Supported

### FDA Regulations
- **21 CFR 820**: Quality System Regulation for medical devices
- **21 CFR 11**: Electronic Records and Electronic Signatures

### International Standards
- **ISO 13485**: Medical devices quality management systems
- **IEC 62304**: Medical device software life cycle processes
- **IEC 60601**: Medical electrical equipment safety standards
- **IEC 62366**: Medical devices usability engineering

### Data Protection
- **GDPR**: General Data Protection Regulation
- **HIPAA**: Health Insurance Portability and Accountability Act

---

## 🛠️ Technology Stack

- **Python 3.8+**: Core programming language
- **Google Vertex AI & Gemini**: Primary AI-powered processing
- **OpenAI GPT**: Alternative AI processing
- **Anthropic Claude**: Additional AI model support
- **Scikit-learn**: Machine learning for predictive prioritization
- **Streamlit**: Web interface framework
- **Pandas**: Data manipulation and analysis
- **OpenPyXL**: Excel file processing
- **PyPDF2**: PDF document parsing
- **BeautifulSoup4**: HTML processing
- **PIL/Pillow**: Image processing for visual regression
- **SQLite**: Local data storage for evidence collection

---

## 🌐 Deployment

See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) for detailed deployment instructions including:
- Local deployment
- Cloud deployment (Streamlit Cloud, Heroku, Railway, Render, Google Cloud Run)
- Demo video creation
- Configuration and troubleshooting

---

## 🤝 Contributing

We welcome contributions from the healthcare and testing communities!

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

### Areas for Contribution
- Additional compliance standards
- New document format support
- Enhanced AI prompts
- Test case templates
- Integration with new tools
- Documentation improvements

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 📞 Support

- **Documentation**: Comprehensive guides in the `/docs` folder
- **Issues**: [GitHub Issues](https://github.com/RadhikaTenali/MedReg-AI/issues)
- **Discussions**: [GitHub Discussions](https://github.com/RadhikaTenali/MedReg-AI/discussions)

---

## 🏆 Acknowledgments

- Built for **Build & Blog Marathon 2025**
- Google Cloud Platform for AI services
- Healthcare community for domain expertise
- Open source contributors
- Regulatory bodies for compliance guidance

---

**MedReg AI represents a significant advancement in healthcare software testing, combining the power of AI with deep healthcare domain knowledge to create a tool that not only generates test cases but ensures they meet the highest standards of quality and compliance.**
