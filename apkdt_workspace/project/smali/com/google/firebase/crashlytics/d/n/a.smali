.class final synthetic Lcom/google/firebase/crashlytics/d/n/a;
.super Ljava/lang/Object;
.source "DataTransportCrashlyticsReportSender.java"

# interfaces
.implements Le/i/b/a/h;


# instance fields
.field private final a:Le/i/b/b/d/i;

.field private final b:Lcom/google/firebase/crashlytics/d/h/q;


# direct methods
.method private constructor <init>(Le/i/b/b/d/i;Lcom/google/firebase/crashlytics/d/h/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/n/a;->a:Le/i/b/b/d/i;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/n/a;->b:Lcom/google/firebase/crashlytics/d/h/q;

    return-void
.end method

.method public static a(Le/i/b/b/d/i;Lcom/google/firebase/crashlytics/d/h/q;)Le/i/b/a/h;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/d/n/a;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/n/a;-><init>(Le/i/b/b/d/i;Lcom/google/firebase/crashlytics/d/h/q;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/n/a;->a:Le/i/b/b/d/i;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/n/a;->b:Lcom/google/firebase/crashlytics/d/h/q;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/n/c;->a(Le/i/b/b/d/i;Lcom/google/firebase/crashlytics/d/h/q;Ljava/lang/Exception;)V

    return-void
.end method
