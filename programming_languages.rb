def reformat_languages(languages)
  new_hash = {}
  languages.each do |i|
+    i[1].each do |language|
+      if new_hash[language[0]] == nil
+        new_hash[language[0]] = language[1]
+        new_hash[language[0]][:style] = [one_level_down[0]]
+      else
+        new_hash[language[0]][:style] << one_level_down[0]
+      end
+    end
+  end
+  new_hash
 end
end
