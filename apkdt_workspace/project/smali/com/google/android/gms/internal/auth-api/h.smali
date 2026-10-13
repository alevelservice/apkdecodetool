.class public final Lcom/google/android/gms/internal/auth-api/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/credentials/a;


# instance fields
.field private final e:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/auth/api/credentials/Credential;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/h;->e:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/auth-api/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth-api/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/auth-api/h;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-object v0
.end method


# virtual methods
.method public final i()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/h;->e:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
