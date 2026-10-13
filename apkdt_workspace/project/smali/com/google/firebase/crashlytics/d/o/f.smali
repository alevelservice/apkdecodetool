.class public Lcom/google/firebase/crashlytics/d/o/f;
.super Ljava/lang/Object;
.source "SettingsJsonParser.java"


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/h/s;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/o/f;->a:Lcom/google/firebase/crashlytics/d/h/s;

    return-void
.end method

.method private static a(I)Lcom/google/firebase/crashlytics/d/o/g;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 4
    new-instance p0, Lcom/google/firebase/crashlytics/d/o/b;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/o/b;-><init>()V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lcom/google/firebase/crashlytics/d/o/h;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/o/h;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/d/o/i/f;
    .locals 2

    const-string v0, "settings_version"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/o/f;->a(I)Lcom/google/firebase/crashlytics/d/o/g;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/o/f;->a:Lcom/google/firebase/crashlytics/d/h/s;

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/o/g;->a(Lcom/google/firebase/crashlytics/d/h/s;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/d/o/i/f;

    move-result-object p1

    return-object p1
.end method
