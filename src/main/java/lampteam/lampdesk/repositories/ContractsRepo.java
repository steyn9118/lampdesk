package lampteam.lampdesk.repositories;

import lampteam.lampdesk.models.Contract;
import lampteam.lampdesk.models.Project;

import java.util.List;

public class ContractsRepo {

    private List<Contract> contracts;

    public Contract getContractByName(String name){
        for (Contract contract : contracts){
            if (contract.getName().equals(name)){
                return contract;
            }
        }
        return null;
    }

    public List<Contract> getContracts() {
        return contracts;
    }
}
