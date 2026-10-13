.class public Lcom/google/firebase/crashlytics/d/n/c;
.super Ljava/lang/Object;
.source "DataTransportCrashlyticsReportSender.java"


# static fields
.field private static final b:Lcom/google/firebase/crashlytics/internal/model/w/h;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Le/i/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/a/e<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Le/i/b/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/a/f<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/w/h;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/w/h;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/n/c;->b:Lcom/google/firebase/crashlytics/internal/model/w/h;

    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    .line 2
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/n/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/n/c;->c:Ljava/lang/String;

    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    const-string v1, "IayrSTFL9eJ69YeSUO2"

    .line 3
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/n/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/n/c;->d:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/n/b;->a()Le/i/b/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/n/c;->e:Le/i/b/a/e;

    return-void
.end method

.method constructor <init>(Le/i/b/a/f;Le/i/b/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/a/f<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            ">;",
            "Le/i/b/a/e<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/n/c;->a:Le/i/b/a/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/crashlytics/d/n/c;
    .locals 4

    .line 2
    invoke-static {p0}, Le/i/b/a/i/r;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Le/i/b/a/i/r;->b()Le/i/b/a/i/r;

    move-result-object p0

    new-instance v0, Lcom/google/android/datatransport/cct/a;

    sget-object v1, Lcom/google/firebase/crashlytics/d/n/c;->c:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/crashlytics/d/n/c;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Le/i/b/a/i/r;->a(Le/i/b/a/i/e;)Le/i/b/a/g;

    move-result-object p0

    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    const-string v1, "json"

    .line 5
    invoke-static {v1}, Le/i/b/a/b;->a(Ljava/lang/String;)Le/i/b/a/b;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/d/n/c;->e:Le/i/b/a/e;

    const-string v3, "FIREBASE_CRASHLYTICS_REPORT"

    .line 6
    invoke-interface {p0, v3, v0, v1, v2}, Le/i/b/a/g;->a(Ljava/lang/String;Ljava/lang/Class;Le/i/b/a/b;Le/i/b/a/e;)Le/i/b/a/f;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/google/firebase/crashlytics/d/n/c;

    sget-object v1, Lcom/google/firebase/crashlytics/d/n/c;->e:Le/i/b/a/e;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/d/n/c;-><init>(Le/i/b/a/f;Le/i/b/a/e;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic a(Le/i/b/b/d/i;Lcom/google/firebase/crashlytics/d/h/q;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p0, p2}, Le/i/b/b/d/i;->b(Ljava/lang/Exception;)Z

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/n/c;->b:Lcom/google/firebase/crashlytics/internal/model/w/h;

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/internal/model/w/h;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/d/h/q;)Le/i/b/b/d/h;
    .locals 3
    .param p1    # Lcom/google/firebase/crashlytics/d/h/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/h/q;",
            ")",
            "Le/i/b/b/d/h<",
            "Lcom/google/firebase/crashlytics/d/h/q;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/q;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v0

    .line 9
    new-instance v1, Le/i/b/b/d/i;

    invoke-direct {v1}, Le/i/b/b/d/i;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/n/c;->a:Le/i/b/a/f;

    .line 11
    invoke-static {v0}, Le/i/b/a/c;->b(Ljava/lang/Object;)Le/i/b/a/c;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/d/n/a;->a(Le/i/b/b/d/i;Lcom/google/firebase/crashlytics/d/h/q;)Le/i/b/a/h;

    move-result-object p1

    .line 12
    invoke-interface {v2, v0, p1}, Le/i/b/a/f;->a(Le/i/b/a/c;Le/i/b/a/h;)V

    .line 13
    invoke-virtual {v1}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
