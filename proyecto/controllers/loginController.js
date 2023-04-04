let loginController = {
    index: function(req, res){
        return res.render('login')
    },
    profile: function(req,res){
        return res.render('profile')
    },
    edit: function(req, res){
        return res.render('profile-edit')
    }
}
module.exports = loginController