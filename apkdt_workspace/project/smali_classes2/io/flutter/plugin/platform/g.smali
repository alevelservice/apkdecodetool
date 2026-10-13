.class public abstract Lio/flutter/plugin/platform/g;
.super Ljava/lang/Object;
.source "PlatformViewFactory.java"


# instance fields
.field private final a:Lg/a/c/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/c/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/c/a/i<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugin/platform/g;->a:Lg/a/c/a/i;

    return-void
.end method


# virtual methods
.method public final a()Lg/a/c/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/a/c/a/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/g;->a:Lg/a/c/a/i;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/f;
.end method
