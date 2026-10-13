.class public Lcom/google/android/gms/auth/a/a$a$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/Boolean;

.field protected c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/a/a$a$a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/a/a$a;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/a/a$a$a;->b:Ljava/lang/Boolean;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/auth/a/a$a;->a(Lcom/google/android/gms/auth/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/a/a$a$a;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/auth/a/a$a;->b(Lcom/google/android/gms/auth/a/a$a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/a/a$a$a;->b:Ljava/lang/Boolean;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/auth/a/a$a;->c(Lcom/google/android/gms/auth/a/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/a/a$a$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/auth/a/a$a$a;
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/a/a$a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/google/android/gms/auth/a/a$a;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/a/a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/a/a$a;-><init>(Lcom/google/android/gms/auth/a/a$a$a;)V

    return-object v0
.end method
