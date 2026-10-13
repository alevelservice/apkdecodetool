.class final Lcom/google/android/gms/auth/api/signin/c$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/l$a<",
        "Lcom/google/android/gms/auth/api/signin/d;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/m;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/d;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/d;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    return-object p1
.end method
