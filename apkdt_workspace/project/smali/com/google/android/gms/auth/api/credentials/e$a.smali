.class public final Lcom/google/android/gms/auth/api/credentials/e$a;
.super Lcom/google/android/gms/auth/a/a$a$a;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/a/a$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/auth/a/a$a$a;
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/auth/a/a$a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic a()Lcom/google/android/gms/auth/a/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/e$a;->b()Lcom/google/android/gms/auth/api/credentials/e;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/auth/api/credentials/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/e;-><init>(Lcom/google/android/gms/auth/api/credentials/e$a;Lcom/google/android/gms/auth/api/credentials/j;)V

    return-object v0
.end method
