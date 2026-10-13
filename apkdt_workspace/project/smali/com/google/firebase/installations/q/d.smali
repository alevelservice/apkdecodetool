.class public abstract Lcom/google/firebase/installations/q/d;
.super Ljava/lang/Object;
.source "PersistedInstallationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/q/d$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/installations/q/d;->p()Lcom/google/firebase/installations/q/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/q/d$a;->a()Lcom/google/firebase/installations/q/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static p()Lcom/google/firebase/installations/q/d$a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/installations/q/a$b;

    invoke-direct {v0}, Lcom/google/firebase/installations/q/a$b;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/installations/q/a$b;->b(J)Lcom/google/firebase/installations/q/d$a;

    sget-object v3, Lcom/google/firebase/installations/q/c$a;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/q/c$a;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/firebase/installations/q/d$a;->a(Lcom/google/firebase/installations/q/c$a;)Lcom/google/firebase/installations/q/d$a;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/installations/q/d$a;->a(J)Lcom/google/firebase/installations/q/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/firebase/installations/q/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->m()Lcom/google/firebase/installations/q/d$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/q/d$a;->c(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;

    sget-object p1, Lcom/google/firebase/installations/q/c$a;->REGISTER_ERROR:Lcom/google/firebase/installations/q/c$a;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/q/d$a;->a(Lcom/google/firebase/installations/q/c$a;)Lcom/google/firebase/installations/q/d$a;

    .line 12
    invoke-virtual {v0}, Lcom/google/firebase/installations/q/d$a;->a()Lcom/google/firebase/installations/q/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;JJ)Lcom/google/firebase/installations/q/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->m()Lcom/google/firebase/installations/q/d$a;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/q/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;

    .line 15
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/installations/q/d$a;->a(J)Lcom/google/firebase/installations/q/d$a;

    .line 16
    invoke-virtual {v0, p4, p5}, Lcom/google/firebase/installations/q/d$a;->b(J)Lcom/google/firebase/installations/q/d$a;

    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/installations/q/d$a;->a()Lcom/google/firebase/installations/q/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/q/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->m()Lcom/google/firebase/installations/q/d$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/q/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;

    sget-object p1, Lcom/google/firebase/installations/q/c$a;->REGISTERED:Lcom/google/firebase/installations/q/c$a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/q/d$a;->a(Lcom/google/firebase/installations/q/c$a;)Lcom/google/firebase/installations/q/d$a;

    .line 4
    invoke-virtual {v0, p5}, Lcom/google/firebase/installations/q/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/firebase/installations/q/d$a;->d(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;

    .line 6
    invoke-virtual {v0, p6, p7}, Lcom/google/firebase/installations/q/d$a;->a(J)Lcom/google/firebase/installations/q/d$a;

    .line 7
    invoke-virtual {v0, p3, p4}, Lcom/google/firebase/installations/q/d$a;->b(J)Lcom/google/firebase/installations/q/d$a;

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/installations/q/d$a;->a()Lcom/google/firebase/installations/q/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()J
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/installations/q/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->m()Lcom/google/firebase/installations/q/d$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/q/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;

    sget-object p1, Lcom/google/firebase/installations/q/c$a;->UNREGISTERED:Lcom/google/firebase/installations/q/c$a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/q/d$a;->a(Lcom/google/firebase/installations/q/c$a;)Lcom/google/firebase/installations/q/d$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/installations/q/d$a;->a()Lcom/google/firebase/installations/q/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()Lcom/google/firebase/installations/q/c$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract g()J
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->f()Lcom/google/firebase/installations/q/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->REGISTER_ERROR:Lcom/google/firebase/installations/q/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->f()Lcom/google/firebase/installations/q/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->NOT_GENERATED:Lcom/google/firebase/installations/q/c$a;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->f()Lcom/google/firebase/installations/q/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/q/c$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->f()Lcom/google/firebase/installations/q/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->REGISTERED:Lcom/google/firebase/installations/q/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->f()Lcom/google/firebase/installations/q/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->UNREGISTERED:Lcom/google/firebase/installations/q/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->f()Lcom/google/firebase/installations/q/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/q/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract m()Lcom/google/firebase/installations/q/d$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public n()Lcom/google/firebase/installations/q/d;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->m()Lcom/google/firebase/installations/q/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/q/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;

    invoke-virtual {v0}, Lcom/google/firebase/installations/q/d$a;->a()Lcom/google/firebase/installations/q/d;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/firebase/installations/q/d;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/q/d;->m()Lcom/google/firebase/installations/q/d$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->NOT_GENERATED:Lcom/google/firebase/installations/q/c$a;

    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/q/d$a;->a(Lcom/google/firebase/installations/q/c$a;)Lcom/google/firebase/installations/q/d$a;

    invoke-virtual {v0}, Lcom/google/firebase/installations/q/d$a;->a()Lcom/google/firebase/installations/q/d;

    move-result-object v0

    return-object v0
.end method
