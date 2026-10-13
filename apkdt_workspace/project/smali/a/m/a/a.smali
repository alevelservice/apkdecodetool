.class public abstract La/m/a/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/m/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/lifecycle/h;)La/m/a/a;
    .locals 2
    .param p0    # Landroidx/lifecycle/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/h;",
            ":",
            "Landroidx/lifecycle/s;",
            ">(TT;)",
            "La/m/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, La/m/a/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/s;

    invoke-interface {v1}, Landroidx/lifecycle/s;->getViewModelStore()Landroidx/lifecycle/r;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/m/a/b;-><init>(Landroidx/lifecycle/h;Landroidx/lifecycle/r;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(ILandroid/os/Bundle;La/m/a/a$a;)La/m/b/b;
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # La/m/a/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "La/m/a/a$a<",
            "TD;>;)",
            "La/m/b/b<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
