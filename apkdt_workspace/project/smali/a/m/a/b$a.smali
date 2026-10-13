.class public La/m/a/b$a;
.super Landroidx/lifecycle/m;
.source "LoaderManagerImpl.java"

# interfaces
.implements La/m/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/m/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/m<",
        "TD;>;",
        "La/m/b/b$b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final k:I

.field private final l:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:La/m/b/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/m/b/b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private n:Landroidx/lifecycle/h;

.field private o:La/m/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/m/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private p:La/m/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/m/b/b<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;La/m/b/b;La/m/b/b;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # La/m/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # La/m/b/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "La/m/b/b<",
            "TD;>;",
            "La/m/b/b<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/m;-><init>()V

    .line 2
    iput p1, p0, La/m/a/b$a;->k:I

    .line 3
    iput-object p2, p0, La/m/a/b$a;->l:Landroid/os/Bundle;

    .line 4
    iput-object p3, p0, La/m/a/b$a;->m:La/m/b/b;

    .line 5
    iput-object p4, p0, La/m/a/b$a;->p:La/m/b/b;

    .line 6
    iget-object p2, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {p2, p1, p0}, La/m/b/b;->a(ILa/m/b/b$b;)V

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/h;La/m/a/a$a;)La/m/b/b;
    .locals 2
    .param p1    # Landroidx/lifecycle/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La/m/a/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/h;",
            "La/m/a/a$a<",
            "TD;>;)",
            "La/m/b/b<",
            "TD;>;"
        }
    .end annotation

    .line 1
    new-instance v0, La/m/a/b$b;

    iget-object v1, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-direct {v0, v1, p2}, La/m/a/b$b;-><init>(La/m/b/b;La/m/a/a$a;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V

    .line 3
    iget-object p2, p0, La/m/a/b$a;->o:La/m/a/b$b;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p2}, La/m/a/b$a;->a(Landroidx/lifecycle/n;)V

    .line 5
    :cond_0
    iput-object p1, p0, La/m/a/b$a;->n:Landroidx/lifecycle/h;

    .line 6
    iput-object v0, p0, La/m/a/b$a;->o:La/m/a/b$b;

    .line 7
    iget-object p1, p0, La/m/a/b$a;->m:La/m/b/b;

    return-object p1
.end method

.method a(Z)La/m/b/b;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "La/m/b/b<",
            "TD;>;"
        }
    .end annotation

    .line 11
    sget-boolean v0, La/m/a/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    :cond_0
    iget-object v0, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {v0}, La/m/b/b;->b()Z

    .line 13
    iget-object v0, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {v0}, La/m/b/b;->a()V

    .line 14
    iget-object v0, p0, La/m/a/b$a;->o:La/m/a/b$b;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0, v0}, La/m/a/b$a;->a(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {v0}, La/m/a/b$b;->b()V

    .line 17
    :cond_1
    iget-object v1, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {v1, p0}, La/m/b/b;->a(La/m/b/b$b;)V

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, La/m/a/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 19
    :cond_3
    iget-object p1, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {p1}, La/m/b/b;->n()V

    .line 20
    iget-object p1, p0, La/m/a/b$a;->p:La/m/b/b;

    return-object p1

    .line 21
    :cond_4
    iget-object p1, p0, La/m/a/b$a;->m:La/m/b/b;

    return-object p1
.end method

.method public a(La/m/b/b;Ljava/lang/Object;)V
    .locals 1
    .param p1    # La/m/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/m/b/b<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 22
    sget-boolean p1, La/m/a/b;->c:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadComplete: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 24
    invoke-virtual {p0, p2}, La/m/a/b$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_1
    sget-boolean p1, La/m/a/b;->c:Z

    .line 26
    invoke-virtual {p0, p2}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Landroidx/lifecycle/n;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n<",
            "-TD;>;)V"
        }
    .end annotation

    .line 8
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, La/m/a/b$a;->n:Landroidx/lifecycle/h;

    .line 10
    iput-object p1, p0, La/m/a/b$a;->o:La/m/a/b$b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 27
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, La/m/a/b$a;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    .line 28
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/m/a/b$a;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, La/m/a/b$a;->m:La/m/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, La/m/b/b;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, La/m/a/b$a;->o:La/m/a/b$b;

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallbacks="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, La/m/a/b$a;->o:La/m/a/b$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 33
    iget-object p2, p0, La/m/a/b$a;->o:La/m/a/b$b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, La/m/a/b$b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 34
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mData="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, La/m/a/b$a;->e()La/m/b/b;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, La/m/b/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStarted="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->b()Z

    move-result p1

    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/m;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, La/m/a/b$a;->p:La/m/b/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, La/m/b/b;->n()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, La/m/a/b$a;->p:La/m/b/b;

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    .line 1
    sget-boolean v0, La/m/a/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {v0}, La/m/b/b;->p()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 1
    sget-boolean v0, La/m/a/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-virtual {v0}, La/m/b/b;->q()V

    return-void
.end method

.method e()La/m/b/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/m/b/b<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/m/a/b$a;->m:La/m/b/b;

    return-object v0
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, La/m/a/b$a;->n:Landroidx/lifecycle/h;

    .line 2
    iget-object v1, p0, La/m/a/b$a;->o:La/m/a/b$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, La/m/a/b$a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, La/m/a/b$a;->m:La/m/b/b;

    invoke-static {v1, v0}, La/i/m/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
