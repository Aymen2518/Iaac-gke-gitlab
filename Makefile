gke:
    cd gke/; \
	terraform apply -auto-approve; \

delete_gke:
	cd gke/ ; \
	terraform destroy -auto-approve; \

net:
	cd network/; \
	terraform apply -auto-approve; \

delete_net:
	cd network/; \
	terraform destroy -auto-approve; \
