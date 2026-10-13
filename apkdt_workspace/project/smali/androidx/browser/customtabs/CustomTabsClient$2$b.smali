.class Landroidx/browser/customtabs/CustomTabsClient$2$b;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/os/Bundle;

.field final synthetic g:Landroidx/browser/customtabs/CustomTabsClient$2;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$b;->g:Landroidx/browser/customtabs/CustomTabsClient$2;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$b;->e:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$b;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$b;->g:Landroidx/browser/customtabs/CustomTabsClient$2;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/c;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$b;->e:Ljava/lang/String;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$b;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
