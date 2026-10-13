.class final synthetic Lcom/google/firebase/crashlytics/internal/model/w/f;
.super Ljava/lang/Object;
.source "CrashlyticsReportJsonTransform.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/model/w/h$a;


# static fields
.field private static final a:Lcom/google/firebase/crashlytics/internal/model/w/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/w/f;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/w/f;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/w/f;->a:Lcom/google/firebase/crashlytics/internal/model/w/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/internal/model/w/h$a;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/w/f;->a:Lcom/google/firebase/crashlytics/internal/model/w/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/model/w/h;->f(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$e$b;

    move-result-object p1

    return-object p1
.end method
