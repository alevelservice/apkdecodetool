.class public final Lcom/facebook/soloader/d;
.super Lcom/facebook/soloader/l;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/d$c;,
        Lcom/facebook/soloader/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/facebook/soloader/l$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/soloader/d$b;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/d$b;-><init>(Lcom/facebook/soloader/d;Lcom/facebook/soloader/l;)V

    return-object v0
.end method
