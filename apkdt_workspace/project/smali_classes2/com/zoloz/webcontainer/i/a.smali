.class public Lcom/zoloz/webcontainer/i/a;
.super Ljava/lang/Object;
.source "H5Environment.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/res/Resources;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    .line 5
    sget-object v0, Lcom/zoloz/webcontainer/i/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/zoloz/webcontainer/i/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/zoloz/webcontainer/i/a;->a:Landroid/content/Context;

    .line 3
    :cond_0
    sget-object p0, Lcom/zoloz/webcontainer/i/a;->b:Landroid/content/res/Resources;

    if-nez p0, :cond_1

    sget-object p0, Lcom/zoloz/webcontainer/i/a;->a:Landroid/content/Context;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/zoloz/webcontainer/i/a;->b:Landroid/content/res/Resources;

    :cond_1
    return-void
.end method
