.class final Lg/c/a/i/b$h;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Lg/c/a/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/c/a/e/h<",
        "Lg/c/a/b/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lg/c/a/b/g;
    .locals 1

    .line 2
    sget-object v0, Lg/c/a/i/b$g;->a:Lg/c/a/b/g;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/c/a/i/b$h;->get()Lg/c/a/b/g;

    move-result-object v0

    return-object v0
.end method
