.class public final Lcom/google/android/gms/auth/api/credentials/e;
.super Lcom/google/android/gms/auth/a/a$a;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/e$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/google/android/gms/auth/api/credentials/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/e$a;->a()Lcom/google/android/gms/auth/a/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/e;

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/e;->i:Lcom/google/android/gms/auth/api/credentials/e;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/a/a$a;-><init>(Lcom/google/android/gms/auth/a/a$a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/e$a;Lcom/google/android/gms/auth/api/credentials/j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/e;-><init>(Lcom/google/android/gms/auth/api/credentials/e$a;)V

    return-void
.end method
