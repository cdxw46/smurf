.class Lcom/hacker101/oauth/Browser$SSLTolerentWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hacker101/oauth/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLTolerentWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hacker101/oauth/Browser;

.field webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/hacker101/oauth/Browser;Landroid/webkit/WebView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/hacker101/oauth/Browser$SSLTolerentWebViewClient;->this$0:Lcom/hacker101/oauth/Browser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/hacker101/oauth/Browser$SSLTolerentWebViewClient;->webView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 91
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/hacker101/oauth/Browser$SSLTolerentWebViewClient;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
