.class public abstract Lcom/google/android/gms/internal/ads/t01;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "KeyProto::",
        "Lcom/google/android/gms/internal/ads/oa1;",
        "KeyFormatProto::",
        "Lcom/google/android/gms/internal/ads/oa1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/u01<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TKeyProto;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TKeyFormatProto;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;",
            "Ljava/lang/Class<",
            "TKeyProto;>;",
            "Ljava/lang/Class<",
            "TKeyFormatProto;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t01;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t01;->b:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/t01;->c:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/t01;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Casted:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TCasted;>;)TCasted;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final g(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProto;)TP;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->c(Lcom/google/android/gms/internal/ads/oa1;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final h(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProto;)TKeyProto;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->d(Lcom/google/android/gms/internal/ads/oa1;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->c(Lcom/google/android/gms/internal/ads/oa1;)V

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/l41;
    .locals 2

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/o91; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->h(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/l41;->o()Lcom/google/android/gms/internal/ads/l41$a;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t01;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/l41$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/l41$a;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/oa1;->f()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/l41$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/l41$a;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t01;->c()Lcom/google/android/gms/internal/ads/l41$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/l41$a;->a(Lcom/google/android/gms/internal/ads/l41$b;)Lcom/google/android/gms/internal/ads/l41$a;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l41;

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpected proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t01;->c:Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Expected proto of type "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t01;->c:Ljava/lang/Class;

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/t01;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/oa1;

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->h(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t01;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .locals 4

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->h(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/o91; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t01;->c:Ljava/lang/Class;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oa1;",
            ")TP;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t01;->b:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Expected proto of type "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t01;->b:Ljava/lang/Class;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/t01;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/oa1;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->g(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t01;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract c()Lcom/google/android/gms/internal/ads/l41$b;
.end method

.method public final c(Lcom/google/android/gms/internal/ads/t71;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/t71;",
            ")TP;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/t01;->g(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/o91; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t01;->b:Ljava/lang/Class;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract c(Lcom/google/android/gms/internal/ads/oa1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProto;)V"
        }
    .end annotation
.end method

.method protected abstract d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/t71;",
            ")TKeyProto;"
        }
    .end annotation
.end method

.method protected abstract d(Lcom/google/android/gms/internal/ads/oa1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProto;)V"
        }
    .end annotation
.end method

.method protected abstract e(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/oa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/t71;",
            ")TKeyFormatProto;"
        }
    .end annotation
.end method

.method protected abstract e(Lcom/google/android/gms/internal/ads/oa1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProto;)TP;"
        }
    .end annotation
.end method

.method protected abstract f(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/oa1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProto;)TKeyProto;"
        }
    .end annotation
.end method
