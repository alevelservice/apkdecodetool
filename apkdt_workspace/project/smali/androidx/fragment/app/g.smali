.class public abstract Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/g$b;,
        Landroidx/fragment/app/g$c;,
        Landroidx/fragment/app/g$a;
    }
.end annotation


# static fields
.field static final f:Landroidx/fragment/app/e;


# instance fields
.field private e:Landroidx/fragment/app/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/e;

    invoke-direct {v0}, Landroidx/fragment/app/e;-><init>()V

    sput-object v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/e;

    return-void
.end method


# virtual methods
.method public abstract a(I)Landroidx/fragment/app/Fragment;
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract a()Landroidx/fragment/app/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(II)V
.end method

.method public a(Landroidx/fragment/app/e;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/e;

    return-void
.end method

.method public abstract a(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method public d()Landroidx/fragment/app/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/e;

    iput-object v0, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/e;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/g;->e:Landroidx/fragment/app/e;

    return-object v0
.end method

.method public abstract e()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()Z
.end method
