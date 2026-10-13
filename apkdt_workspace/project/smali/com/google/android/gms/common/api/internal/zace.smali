.class public final Lcom/google/android/gms/common/api/internal/zace;
.super Lcom/google/android/gms/signin/internal/zad;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/f$a;
.implements Lcom/google/android/gms/common/api/f$b;


# static fields
.field private static l:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Le/i/b/b/c/d;",
            "Le/i/b/b/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Le/i/b/b/c/d;",
            "Le/i/b/b/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/common/internal/c;

.field private j:Le/i/b/b/c/d;

.field private k:Lcom/google/android/gms/common/api/internal/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/i/b/b/c/c;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zace;->l:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/c;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/common/internal/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zace;->l:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/api/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/api/a$a;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/common/internal/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/c;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Le/i/b/b/c/d;",
            "Le/i/b/b/c/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zad;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zace;->f:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/c;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->i:Lcom/google/android/gms/common/internal/c;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/c;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->h:Ljava/util/Set;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zace;->g:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method private final a(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->j()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->k()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->k()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->k:Lcom/google/android/gms/common/api/internal/t0;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/t0;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->k:Lcom/google/android/gms/common/api/internal/t0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->j()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zace;->h:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/t0;->a(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->k:Lcom/google/android/gms/common/api/internal/t0;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/t0;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zace;)Lcom/google/android/gms/common/api/internal/t0;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zace;->k:Lcom/google/android/gms/common/api/internal/t0;

    return-object p0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zace;->a(Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    invoke-interface {p1, p0}, Le/i/b/b/c/d;->a(Lcom/google/android/gms/signin/internal/zac;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->k:Lcom/google/android/gms/common/api/internal/t0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/t0;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/t0;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->i:Lcom/google/android/gms/common/internal/c;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Integer;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zace;->g:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zace;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->f:Landroid/os/Handler;

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zace;->i:Lcom/google/android/gms/common/internal/c;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/c;->i()Le/i/b/b/c/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Le/i/b/b/c/d;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->k:Lcom/google/android/gms/common/api/internal/t0;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->h:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    invoke-interface {p1}, Le/i/b/b/c/d;->b()V

    return-void

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->f:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/s0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/s0;-><init>(Lcom/google/android/gms/common/api/internal/zace;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->f:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/u0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/u0;-><init>(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zabo()Le/i/b/b/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    return-object v0
.end method

.method public final zabq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->j:Le/i/b/b/c/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    :cond_0
    return-void
.end method
