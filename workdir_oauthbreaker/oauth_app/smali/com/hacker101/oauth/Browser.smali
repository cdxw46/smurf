.class public Lcom/hacker101/oauth/Browser;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hacker101/oauth/Browser$SSLTolerentWebViewClient;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 98
    invoke-virtual {p0, p1}, Lcom/hacker101/oauth/Browser;->setContentView(I)V

    const-string p1, "https://82ac96291535f036bf0542c8a1c12cee.ctf.hacker101.com/authed"

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/hacker101/oauth/Browser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "uri"

    .line 103
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "uri"

    .line 104
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const v0, 0x7f070091

    .line 107
    invoke-virtual {p0, v0}, Lcom/hacker101/oauth/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 108
    new-instance v1, Lcom/hacker101/oauth/Browser$SSLTolerentWebViewClient;

    invoke-direct {v1, p0, v0}, Lcom/hacker101/oauth/Browser$SSLTolerentWebViewClient;-><init>(Lcom/hacker101/oauth/Browser;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    new-instance v1, Lcom/hacker101/oauth/WebAppInterface;

    invoke-virtual {p0}, Lcom/hacker101/oauth/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hacker101/oauth/WebAppInterface;-><init>(Landroid/content/Context;)V

    const-string v2, "iface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
