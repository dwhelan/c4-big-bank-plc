workspace "Report Checker" "Tools to validate Merck reports" {

    !identifiers hierarchical
    
    model {
        watzan = enterprise "Watzan {
            andy = person "Andy"
            geordie = person "Geordie"
            
            _ = softwareSystem "Report Checker" {
                checker = container "checker" {
                    core = group "core" {
                       io = component "io" "Directory scanning and CSV file reading."
                       importers = component "importers" "CSV file importing."
                       // macros = component "macros" "Macros for use in contracts."
                       // schema = component "schema" "Provides schemas with importers that return hashes."
                       // schemas = component "schemas" "Common schemas for CSV files and URLs."
                    }
                    merck = group "merck" {
                       ace = component "ACE" "Contracts, schemas for Merck ACE files."
                       schema = component "schema" "Provides a DSL for Merck reports."
                    }
                }                
                deliverease = container "Deliverease"
            }

            // interactions
            andy -> _.deliverease "generates Merck reports"
            andy -> geordie "sends reports"
            geordie -> andy "sends check results"

            // check reporting process            
            geordie -> _ "checks reports"
            geordie -> _.checker "runs checks"
            geordie -> _.checker "maintains"
            geordie -> _.checker "resets for next week"
        }

        merckGroup = group "Merck" {
            jfk = person "JFK"
            sftp = softwareSystem "SFTP Server"
        }

        // Merck interactions
        andy -> sftp "sends reports"
        jfk -> andy "emails requests and report status"
        andy -> jfk "emails updates"
    }
    
    views {
        systemLandscape {
            include * -> *
            autoLayout
        }
        
        systemContext _ {
            include * -> *
            autoLayout
        }
        
        component _.checker {
            include * -> *
            autoLayout
        }

        theme default
    }
}
