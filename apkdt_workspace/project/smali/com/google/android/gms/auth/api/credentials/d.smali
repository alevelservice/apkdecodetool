.class public Lcom/google/android/gms/auth/api/credentials/d;
.super Lcom/google/android/gms/common/api/e;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/e<",
        "Lcom/google/android/gms/auth/a/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/a/a$a;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/a/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/a/a;->e:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
    .locals 3
    .param p1    # Lcom/google/android/gms/auth/api/credentials/HintRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->d()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/a/a$a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->d()Lcom/google/android/gms/common/api/a$d;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/a/a$a;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/a/a$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/auth-api/m;->a(Landroid/content/Context;Lcom/google/android/gms/auth/a/a$a;Lcom/google/android/gms/auth/api/credentials/HintRequest;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
