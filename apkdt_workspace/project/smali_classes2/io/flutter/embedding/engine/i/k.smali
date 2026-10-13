.class public Lio/flutter/embedding/engine/i/k;
.super Ljava/lang/Object;
.source "SettingsChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/i/k$b;,
        Lio/flutter/embedding/engine/i/k$a;
    }
.end annotation


# instance fields
.field public final a:Lg/a/c/a/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/e/a;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/e/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/c/a/b;

    sget-object v1, Lg/a/c/a/f;->a:Lg/a/c/a/f;

    const-string v2, "flutter/settings"

    invoke-direct {v0, p1, v2, v1}, Lg/a/c/a/b;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/i;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/k;->a:Lg/a/c/a/b;

    return-void
.end method


# virtual methods
.method public a()Lio/flutter/embedding/engine/i/k$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/embedding/engine/i/k$a;

    iget-object v1, p0, Lio/flutter/embedding/engine/i/k;->a:Lg/a/c/a/b;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/i/k$a;-><init>(Lg/a/c/a/b;)V

    return-object v0
.end method
