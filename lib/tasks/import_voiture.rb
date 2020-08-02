require 'active_support/all'
contenu = File.read('./voitures.xml')
h = Hash.from_xml(contenu)
h['voitures'].each do |voiture|
    marque = voiture['marque']
    nom = marque['nom']
    marque = Marque.where(libelle: nom).first_or_create
    couleur = voiture['couleur']
    modele = voiture['modele']
    id = voiture['id']
    immatriculation = voiture['immatriculation']
    #created_at = voiture['created-at']
    #date_mise_en_service = voiture['updated-at'] 
    # Voiture.where(id: id).first_or_create(params[:id])
    Voiture.where(immatriculation: immatriculation).first_or_create(couleur: couleur, modele: modele, marque_id: marque.id)
end
h['voitures'].each do |voiture|
    couleur = voiture['couleur']
    created_at = voiture['created_at']
    id = voiture['id']
    immatriculation = voiture['immatriculation']
end