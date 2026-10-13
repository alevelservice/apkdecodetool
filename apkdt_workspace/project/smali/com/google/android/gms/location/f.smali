.class public Lcom/google/android/gms/location/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/f$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/location/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/location/i;",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/location/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/location/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/f;->a:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/location/n;

    invoke-direct {v0}, Lcom/google/android/gms/location/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/f;->b:Lcom/google/android/gms/common/api/a$a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/location/f;->b:Lcom/google/android/gms/common/api/a$a;

    sget-object v2, Lcom/google/android/gms/location/f;->a:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "LocationServices.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/location/f;->c:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/location/v;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/f;->d:Lcom/google/android/gms/location/a;

    new-instance v0, Lcom/google/android/gms/internal/location/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/d;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/location/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/f;->e:Lcom/google/android/gms/location/i;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Lcom/google/android/gms/location/j;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/location/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/j;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
