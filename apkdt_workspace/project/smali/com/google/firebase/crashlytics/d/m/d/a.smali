.class public Lcom/google/firebase/crashlytics/d/m/d/a;
.super Ljava/lang/Object;
.source "CompositeCreateReportSpiCall.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/m/d/b;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/m/d/c;

.field private final b:Lcom/google/firebase/crashlytics/d/m/d/d;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/d/m/d/c;Lcom/google/firebase/crashlytics/d/m/d/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/m/d/a;->a:Lcom/google/firebase/crashlytics/d/m/d/c;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/m/d/a;->b:Lcom/google/firebase/crashlytics/d/m/d/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/d/m/c/a;Z)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/m/d/a$a;->a:[I

    iget-object v1, p1, Lcom/google/firebase/crashlytics/d/m/c/a;->c:Lcom/google/firebase/crashlytics/d/m/c/c;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/m/c/c;->getType()Lcom/google/firebase/crashlytics/d/m/c/c$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/m/d/a;->b:Lcom/google/firebase/crashlytics/d/m/d/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/d/m/d/d;->a(Lcom/google/firebase/crashlytics/d/m/c/a;Z)Z

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/m/d/a;->a:Lcom/google/firebase/crashlytics/d/m/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/d/m/d/c;->a(Lcom/google/firebase/crashlytics/d/m/c/a;Z)Z

    return v1
.end method
